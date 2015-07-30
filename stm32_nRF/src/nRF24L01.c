#include <stm32f10x_gpio.h>
#include <stm32f10x_rcc.h>
#include <stm32f10x_spi.h>
#include "Hw_config.h"

#include <nRF24L01.h>
 
uint8_t nRF24_RX_addr[nRF24_RX_ADDR_WIDTH] = {0x00,0xe2,0xe2,0xe2,0xe2};
uint8_t nRF24_TX_addr[nRF24_TX_ADDR_WIDTH] = {0x10,0xe2,0xe2,0xe2,0xe2};


// SPI initialization with given prescaler
void nRF24_SPI_Init(uint16_t prescaler) {
   SPI_InitTypeDef SPI;
   
   SPI.SPI_Mode = SPI_Mode_Master;
   SPI.SPI_BaudRatePrescaler = prescaler;// 36/8 = 4.5mhz
   SPI.SPI_Direction = SPI_Direction_2Lines_FullDuplex;
   SPI.SPI_CPOL = SPI_CPOL_Low;
   SPI.SPI_CPHA = SPI_CPHA_1Edge;
   SPI.SPI_CRCPolynomial = 7;
   SPI.SPI_DataSize = SPI_DataSize_8b;
   SPI.SPI_FirstBit = SPI_FirstBit_MSB;
   SPI.SPI_NSS = SPI_NSS_Soft;
   SPI_Init(SPI_PORT,&SPI);

   // NSS must be set to '1' due to NSS_Soft settings (otherwise it will be Multimaster mode).
   SPI_NSSInternalSoftwareConfig(SPI_PORT,SPI_NSSInternalSoft_Set);
}
void powerUp(void)
{
	uint8_t cfg = nRF24_ReadReg(nRF24_REG_CONFIG);


   // if not powered up then power up and wait for the radio to initialize
	if (!(cfg & _BV(PWR_UP))) {
   	nRF24_RWReg(nRF24_CMD_WREG | nRF24_REG_CONFIG, nRF24_ReadReg(nRF24_REG_CONFIG) | _BV(PWR_UP));
  
	// For nRF24L01+ to go from power down mode to TX or RX mode it must first pass through stand-by mode.
	// There must be a delay of Tpd2stby (see Table 16.) after the nRF24L01+ leaves power down mode before
	// the CEis set high. - Tpd2stby can be up to 5ms per the 1.0 datasheet
	// Delay(5); //1//1.5ms
	// delay_int_count(8474);	//1//1,4ms
	 delay_int_count(787);	// 130us	// case by use internal crystal oscillator
   }
}

// GPIO and SPI initialization
void nRF24_init() {

	
#if _SPI_PORT == 1
	// SPI1
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_SPI1 | RCC_APB2Periph_GPIOA,ENABLE);
#elif _SPI_PORT == 2
	// SPI2
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB,ENABLE);
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_SPI2,ENABLE);
#elif _SPI_PORT == 3
	// SPI3
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB | RCC_APB2Periph_AFIO,ENABLE);
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_SPI3,ENABLE);
	GPIO_PinRemapConfig(GPIO_Remap_SWJ_JTAGDisable, ENABLE); // Disable JTAG for use PB3
#endif

	GPIO_InitTypeDef PORT;
	// Configure SPI pins
	PORT.GPIO_Speed = GPIO_Speed_50MHz;
	PORT.GPIO_Pin = SPI_SCK_PIN | SPI_MISO_PIN | SPI_MOSI_PIN;
	PORT.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_Init(SPI_GPIO_PORT,&PORT);
	// Configure CS pin as output with Push-Pull
	PORT.GPIO_Pin = SPI_CS_PIN;
	PORT.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_Init(SPI_GPIO_PORT,&PORT);
	// Configure CE pin as output with Push-Pull
	PORT.GPIO_Pin = nRF24_CE_PIN;
	PORT.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_Init(nRF24_CE_PORT,&PORT);


//	Delay(11); //10.3ms
	delay_int_count(62345); 		//10.3ms
	nRF24_SPI_Init(SPI_BaudRatePrescaler_4); // Which SPI speed do we need?
	SPI_Cmd(SPI_PORT,ENABLE);

	CE_L();
	CSN_H();

	//same as arduino setting
	nRF24_RWReg(nRF24_CMD_FLUSH_RX,0xFF);   //rx flush
	nRF24_RWReg(nRF24_CMD_FLUSH_TX,0xFF);   //tx flush

	powerUp();

	// Disable tx irq, max irq
	nRF24_RWReg(nRF24_CMD_WREG |nRF24_REG_CONFIG, (nRF24_ReadReg(nRF24_REG_CONFIG) | 0x30) );
	// Enable PTX, do not write CE high so radio will remain in standby I mode ( 130us max to transition to RX or TX instead of 1500us from powerUp )
	// PTX should use only 22uA of power
	nRF24_RWReg(nRF24_CMD_WREG |nRF24_REG_CONFIG, ( nRF24_ReadReg(nRF24_REG_CONFIG) & ~(_BV(PRIM_RX))) );
	// Set frequency channel 100 (2.510MHz)
	nRF24_RWReg(nRF24_CMD_WREG | nRF24_REG_RF_CH,0x64); 
	// DataRate : 2Mbps RF_SETUP Regi -> RF_PWR(2:1) -> 11(0dBm), Set RF output power in TX mode(TX_PWR)   
	nRF24_RWReg(nRF24_CMD_WREG | nRF24_REG_RF_SETUP,0x0f); 
	// Ensure autoACK is Disabled   
	nRF24_RWReg(nRF24_CMD_WREG | nRF24_REG_EN_AA,0x00);    
	// Optionally, increase the delay between retries & # of retries
	// ART(Auto Retransmission) : Disable
	nRF24_RWReg(nRF24_CMD_WREG | nRF24_REG_SETUP_RETR,0x00);
	// CRC : 8bit
	//   nRF24_RWReg(nRF24_CMD_WREG | nRF24_REG_CONFIG,0x0b);
	nRF24_RWReg(nRF24_CMD_WREG | nRF24_REG_CONFIG,nRF24_ReadReg(nRF24_REG_CONFIG) & ~( _BV(CRCO) ));

	// Config: CRC(1 bytes), Power UP, RX/TX ctl = PRX
	nRF24_WriteBuf(nRF24_CMD_WREG | nRF24_REG_RX_ADDR_P0,nRF24_TX_addr,nRF24_RX_ADDR_WIDTH); // Set static RX address   
	nRF24_WriteBuf(nRF24_CMD_WREG | nRF24_REG_TX_ADDR,nRF24_TX_addr,nRF24_RX_ADDR_WIDTH); // Set static RX address   
	nRF24_RWReg(nRF24_CMD_WREG | nRF24_REG_RX_PW_P0,R_PAYLOAD); // Set RX payload length (32 bytes)
	nRF24_WriteBuf(nRF24_CMD_WREG | nRF24_REG_RX_ADDR_P1,nRF24_RX_addr,nRF24_RX_ADDR_WIDTH); // Set static RX address
	nRF24_RWReg(nRF24_CMD_WREG | nRF24_REG_RX_PW_P1,R_PAYLOAD); // Set RX payload length (32 bytes)


	//startListening();
	powerUp();
	nRF24_RWReg(nRF24_CMD_WREG |nRF24_REG_CONFIG, nRF24_ReadReg(nRF24_REG_CONFIG) | _BV(PRIM_RX));
	nRF24_RWReg(nRF24_CMD_WREG |nRF24_REG_STATUS, _BV(RX_DR) | _BV(TX_DS) | _BV(MAX_RT) );

	nRF24_RWReg(nRF24_CMD_WREG |nRF24_CMD_FLUSH_TX,0xFF);   //tx flush
	CE_H();

 
 
	powerUp();
//	Delay(50);
	delay_int_count(302650); 	//50ms
// Configure IRQ pin as input with Pull-Up
   PORT.GPIO_Pin = nRF24_IRQ_PIN;
   PORT.GPIO_Mode = GPIO_Mode_IPU;
   GPIO_Init(nRF24_IRQ_PORT,&PORT);
   
}

// Send/Receive data to nRF24L01 via SPI
// input:

//   data - byte to send
// output: received byte from nRF24L01
uint8_t nRF24_ReadWrite(uint8_t data) {
   while (SPI_I2S_GetFlagStatus(SPI_PORT,SPI_I2S_FLAG_TXE) == RESET); // Wait while DR register is not empty
   SPI_I2S_SendData(SPI_PORT,data); // Send byte to SPI
   while (SPI_I2S_GetFlagStatus(SPI_PORT,SPI_I2S_FLAG_RXNE) == RESET); // Wait to receive byte
   return SPI_I2S_ReceiveData(SPI_PORT); // Read byte from SPI bus
}

// Write new value to register
// input:
//   reg - register number
//   value - new value
// output: nRF24L01 status
uint8_t nRF24_RWReg(uint8_t reg, uint8_t value) {
   uint8_t status;

   CSN_L();
   status = nRF24_ReadWrite(reg); // Select register
   nRF24_ReadWrite(value); // Write value to register
   CSN_H();

   return status;
}

// Read nRF24L01 register
// input:
//   reg - register number
// output: register value
uint8_t nRF24_ReadReg(uint8_t reg) {
   uint8_t value;

   CSN_L();
   nRF24_ReadWrite(reg);
   value = nRF24_ReadWrite(0x00);
   CSN_H();

   return value;
}

// Get data from nRF24L01 into buffer
// input:
//   reg - register number
//   pBuf - pointer to buffer
//   count - bytes count
// output: nRF24L01 status
uint8_t nRF24_ReadBuf(uint8_t reg, uint8_t *pBuf, uint8_t count) {
   uint8_t status,i;

   CSN_L();
   status = nRF24_ReadWrite(reg);
   for (i = 0; i < count; i++) pBuf[i] = nRF24_ReadWrite(0);
   CSN_H();

   return status;
}

// Send buffer to nRF24L01
// input:
//   reg - register number
//   pBuf - pointer to buffer
//   count - bytes count
// output: nRF24L01 status
uint8_t nRF24_WriteBuf(uint8_t reg, uint8_t *pBuf, uint8_t count) {
	uint8_t status,i;

	CSN_L();
	status = nRF24_ReadWrite(reg);
	for (i = 0; i < count; i++) nRF24_ReadWrite(*pBuf++);
	CSN_H();

	return status;
}

// Check if nRF24L01 present (send byte sequence, read it back and compare)
// return:
//   0 - looks like an nRF24L01 is online
//   1 - received sequence differs from original
uint8_t nRF24_Check(void) {
   uint8_t txbuf[5] = { 0x10,0xe2,0xe2,0xe2,0xe2};
   uint8_t rxbuf[5];
   uint8_t i;

   nRF24_WriteBuf(nRF24_CMD_WREG | nRF24_REG_TX_ADDR,txbuf,5); // Write fake TX address
    nRF24_ReadBuf(nRF24_REG_TX_ADDR,rxbuf,5); // Try to read TX_ADDR register
    for (i = 0; i < 5; i++) if (rxbuf[i] != txbuf[i]) return 1;

    return 0;
}

// Put nRF24L01 in RX mode
void nRF24_RXMode(void) {

/*
   CE_L();
   nRF24_RWReg(nRF24_CMD_WREG | nRF24_REG_CONFIG,0x0b); // Config: CRC(1 bytes), Power UP, RX/TX ctl = PRX 
   Delay(130);
   nRF24_ClearIRQFlags();
   nRF24_WriteBuf(nRF24_CMD_WREG | nRF24_REG_RX_ADDR_P0,nRF24_RX_addr,nRF24_RX_ADDR_WIDTH); // Set static RX address
   nRF24_RWReg(nRF24_CMD_FLUSH_TX,0xFF);   
   CE_H();

 */
//nRF24_WriteBuf(nRF24_CMD_WREG | nRF24_REG_TX_ADDR,nRF24_TX_addr,nRF24_RX_ADDR_WIDTH); // Set static RX address
   
//   nRF24_RWReg(nRF24_CMD_WREG | nRF24_REG_EN_RXADDR,0x03); // Enable data pipe 0
   

   
//   nRF24_RWReg(nRF24_CMD_WREG | nRF24_REG_RX_PW_P1,RX_PAYLOAD); // Set RX payload length (32 bytes)

//	powerUp();
  nRF24_RWReg(nRF24_CMD_WREG |nRF24_REG_CONFIG, nRF24_ReadReg(nRF24_REG_CONFIG) | _BV(PRIM_RX));
	//Delay(130);
	delay_int_count(787);	//130us
 nRF24_RWReg(nRF24_CMD_WREG |nRF24_REG_STATUS, _BV(RX_DR) | _BV(TX_DS) | _BV(MAX_RT) );

  // Flush buffers
  //flush_rx();
 nRF24_RWReg(nRF24_CMD_FLUSH_TX,0xFF);   
  // Go!
  CE_H();

}

// Put nRF24L01 in TX mode
void nRF24_TXMode(uint8_t * pBuf, uint8_t TX_PAYLOAD) {
	//receiver set time in 390us from trans ID to receive 32byte
 
	CE_L();
//	nRF24_RWReg(nRF24_CMD_FLUSH_TX,0xFF);   
	// Set the CONFIG REG to TX mode
	nRF24_RWReg(nRF24_CMD_WREG |nRF24_REG_CONFIG, ( nRF24_ReadReg(nRF24_REG_CONFIG) ) & ~(_BV(PRIM_RX)) );
	 
//	delay_int_count(787);	//130us
	
	// Write specified buffer to FIFO	
	nRF24_WriteBuf(nRF24_CMD_W_TX_PAYLOAD,pBuf,TX_PAYLOAD);	// it takes 210us
		
 	CE_H();	//start transmit

	//sensor trans time needs 100~150us
	
 	// Try Case 1 : Fail	// Total Trans Time : 390us but Don't Trans
//	delay_int_count(787);	//130us

	// Try Case 2 : Success	100% // Total Trans Time : 500us
	int cnt = 1000;
	while(! (nRF24_ReadReg(nRF24_REG_STATUS) & 0x20)){ 
		cnt--;
	}
   
	CE_L();
	nRF24_RWReg(nRF24_CMD_WREG |nRF24_REG_STATUS, _BV(RX_DR) | _BV(TX_DS) | _BV(MAX_RT) );	
	
}

// Check if data is available for reading
// return:
//   0 -> no data
//   1 -> RX_DR is set or some bytes present in FIFO
uint8_t nRF24_DataReady(void) {
    uint8_t status;

    status = nRF24_ReadReg(nRF24_REG_STATUS);
    if (status & nRF24_MASK_RX_DR) return 1;

    // Checking RX_DR isn't good enough, there's can be some data in FIFO
    status = nRF24_ReadReg(nRF24_REG_FIFO_STATUS);

    return (status & nRF24_FIFO_RX_EMPTY) ? 0 : 1;
}

uint8_t nRF24_RXPacket(uint8_t* pBuf, uint8_t RX_PAYLOAD) {
   uint8_t status;

    status = nRF24_ReadReg(nRF24_REG_STATUS); // Read status register
  //  USART_SendData(USART1,status);
//   Delay(10);
    if (status & nRF24_MASK_RX_DR) {
//       USART_SendData(USART1,5);
//   Delay(10);
       if ((status & 0x0E) == 0) {
//          // pipe 0
  //           USART_SendData(USART1,6);
//   Delay(10);
          nRF24_ReadBuf(nRF24_CMD_R_RX_PAYLOAD,pBuf,RX_PAYLOAD); // read received payload from RX FIFO buffer
        }
//       USART_SendData(USART1,7);
//   Delay(10);
      nRF24_ReadWrite(nRF24_CMD_FLUSH_RX); // Flush RX FIFO buffer
      nRF24_RWReg(nRF24_CMD_WREG | nRF24_REG_STATUS,status | 0x70); // Clear RX_DR, TX_DS, MAX_RT flags
       //return nRF24_MASK_RX_DR;
       return status;
    }

    // Some banana happens
//    USART_SendData(USART1,9);
   Delay(10);
   nRF24_ReadWrite(nRF24_CMD_FLUSH_RX); // Flush RX FIFO buffer
   nRF24_RWReg(nRF24_CMD_WREG | nRF24_REG_STATUS,status | 0x70); // Clear RX_DR, TX_DS, MAX_RT flags
    return status;
}

// Send data packet
// input:
//   pBuf - buffer with data to send
// return:
//   nRF24_MASK_MAX_RT - if transmit failed with maximum auto retransmit count
//   nRF24_MAX_TX_DS - if transmit succeed
//   contents of STATUS register otherwise
uint8_t nRF24_TXPacket(uint8_t * pBuf, uint8_t TX_PAYLOAD) {
    uint8_t status;

  
  // nRF24_RWReg(nRF24_CMD_WREG | nRF24_REG_CONFIG,0x02); //pwr up, ptx 

   	Delay(130);
    nRF24_WriteBuf(nRF24_CMD_W_TX_PAYLOAD,pBuf,TX_PAYLOAD); // Write specified buffer to FIFO
    nRF24_RWReg(nRF24_CMD_WREG | nRF24_REG_CONFIG,0x0a); // Config: CRC on (2 bytes), Power UP, RX/TX ctl = PTX
    CE_H(); // CE pin high => Start transmit
    // Delay_us(10); // Must hold CE at least 10us
    //while(PB_IDR_bit.IDR2 != 0); // Wait for IRQ from nRF24L01
   	Delay(10);
	
   int cnt = 1000;
   while(! (nRF24_ReadReg(nRF24_REG_STATUS) & 0x20)){ 
      cnt--;
   }

   CE_L();
    status = nRF24_ReadReg(nRF24_REG_STATUS); // Read status register
   nRF24_RWReg(nRF24_CMD_WREG | nRF24_REG_STATUS,status | 0x70); // Clear RX_DR, TX_DS, MAX_RT flags
    if (status & nRF24_MASK_MAX_RT) {
        // Auto retransmit counter exceeds the programmed maximum limit. FIFO is not removed.
        nRF24_RWReg(nRF24_CMD_WREG |nRF24_CMD_FLUSH_TX,0xFF); // Flush TX FIFO buffer
        return nRF24_MASK_MAX_RT;
    };
    if (status & nRF24_MASK_TX_DS) {
        // Transmit ok
        nRF24_RWReg(nRF24_CMD_WREG |nRF24_CMD_FLUSH_TX,0xFF); // Flush TX FIFO buffer
        return nRF24_MASK_TX_DS;
    }

    // Some banana happens
    return status;
}

// Clear all IRQ flags
void nRF24_ClearIRQFlags(void) {
   uint8_t status;

    status = nRF24_ReadReg(nRF24_REG_STATUS);
   nRF24_RWReg(nRF24_CMD_WREG | nRF24_REG_STATUS,status | 0x70); // Clear RX_DR, TX_DS, MAX_RT flags
}

void print_Reg(void) {
	USART_SendData(USART1, nRF24_ReadReg(nRF24_REG_STATUS));
	delay_int_count(10000);
	USART_SendData(USART1, nRF24_ReadReg(nRF24_REG_EN_AA));
	delay_int_count(10000);
	USART_SendData(USART1, nRF24_ReadReg(nRF24_REG_RF_CH));
	delay_int_count(10000);
	USART_SendData(USART1, nRF24_ReadReg(nRF24_REG_RF_SETUP));
	delay_int_count(10000);
	USART_SendData(USART1, nRF24_ReadReg(nRF24_REG_CONFIG));
	delay_int_count(10000);
}