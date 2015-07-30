
static void delay_int_count(volatile unsigned int nTime)
{
  for(;nTime>0;nTime--);
}
void delay_1_second(void)
{
  delay_int_count(806596);
}

int main(void)
{
  (*(volatile unsigned *)0x40021018) |= 0x8;
  (*(volatile unsigned *)0x40010C04) |= 0x11;
  (*(volatile unsigned *)0x40010C00) |= 0x100000;
  (*(volatile unsigned *)0x40010C04) |= 0x11;
 // (*(volatile unsigned *)0x40010C14) |= 0x200;
  // delay_int_count(10000);
  // (*(volatile unsigned *)0x40010C10) |= 0x200;
   while(1)
   {
     (*(volatile unsigned *)0x40010C14) |= 0x320;
      delay_1_second();
      (*(volatile unsigned *)0x40010C10) |= 0x320;
     delay_1_second();
    }
}