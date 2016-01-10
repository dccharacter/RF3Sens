//###########################################################################################
// RF3Sens (RoboForum triangulation range sensor)
// http://roboforum.ru/forum107/topic15929.html (official language for this forum - russian)
// MIT License
// 2015-2016
// Дмитрий Лилик (aka Dmitry__ @ RoboForum.ru)
// Андрей Пожогин (aka dccharacter  @ RoboForum.ru)
// Сергей Тараненко (aka setar @ RoboForum.ru)
//###########################################################################################

#include "Config.h"
#if defined(debug_type) && defined(software_serial)
  #include <SendOnlySoftwareSerial.h>
#endif

unsigned char Str[5];

void setup(){
  //set pin I/O direction
  #if defined(use_nCS)
    pin_nCS_Mode_OUTPUT;
    pin_nCS_HIGH;
  #endif
  pin_led_Mode_OUTPUT;
  pin_led_HIGH;
#ifdef pin_TRIG_bit
  pin_TRIG_Mode_INPUT;
#endif

#ifdef power_via_mcu
  #ifdef pin_sensor_gnd_bit
    pin_sensor_gnd_OUTPUT;
    pin_sensor_gnd_LOW;
  #endif
  #ifdef pin_sensor_vcc_bit
    pin_sensor_vcc_OUTPUT;
    pin_sensor_vcc_HIGH;
  #endif
  #ifdef pin_laser_gnd_bit
    pin_laser_gnd_OUTPUT;
    pin_laser_gnd_LOW;
  #endif
  #ifdef pin_laser_vcc_bit
    pin_laser_vcc_OUTPUT;
    pin_laser_vcc_HIGH;
  #endif
#endif // power_via_mcu

//initialize SPI
    pin_nClock_Mode_OUTPUT;
    pin_nClock_HIGH;
    pin_SDIO_Mode_OUTPUT;
    pin_SDIO_LOW;
	pin_LASER_Mode_OUTPUT;
	pin_LASER_OFF;

#if defined(debug_type)
    SERIAL_OUT.begin(SERIAL_SPEED);
#endif

  delay(1000);
  ADNS_reset();
}

void loop(){
//###########################################################################################
// штатный режим датчика для 3D принтера
#ifndef debug_type
  byte dataMax, dataMin, dataPix_Sum;

  while(1){
    dataMax = ADNS_read(Maximum_Pixel);
    //dataMax = ADNS_read(Pixel_Sum);
    //dataMax = ADNS_read(squal);

    dataMax > ConstMax ? pin_led_LOW : pin_led_HIGH;

/*
    pin_led_HIGH;
    while(1){ //шаг1
      dataMax = ADNS_read(Maximum_Pixel);
      if(dataMax > ConstMax) break;
    }
    while(1){ //шаг2
      dataMax = ADNS_read(Maximum_Pixel);
      dataMin = ADNS_read(Minimum_Pixel);
      if(dataMax >(ConstMax -2) && dataMin < ConstMin) break;
    }
    while(1){ //шаг3
      dataMax = ADNS_read(Maximum_Pixel);
      dataMin = ADNS_read(Minimum_Pixel);
      dataPix_Sum = ADNS_read(Pixel_Sum);
      if(dataMax > (ConstMax -2) && dataMin < (ConstMin +2) && dataPix_Sum > ConstPixMin && dataPix_Sum < ConstPixMax) break;
    }
    pin_led_LOW;

    while(1){ //ожидание подьема головы
      dataMax = ADNS_read(Maximum_Pixel);
      if(dataMax < ConstMax -2) break;
    }
*/
  }
//###########################################################################################
// отладочные режимы
#else
//-------------------------------------------------------------------------------------------
#if debug_type ==1
//-------------------------------------------------------------------------------------------
  byte Frame[NUM_PIXS + 6];
  pin_LASER_ON;

  while(1){
    pixel_and_params_grab(Frame);
    SERIAL_OUT.write(Frame, NUM_PIXS + 6); // send frame in raw format
    //delay(2);
  }
//-------------------------------------------------------------------------------------------
#elif debug_type ==2
//-------------------------------------------------------------------------------------------
  byte Frame[NUM_PIXS + 6];

  byte data;
  while(1){
    //data = ADNS_read(squal);
    data = ADNS_read(Maximum_Pixel);
    //data = ADNS_read(Pixel_Sum);

    if(data > ConstMax){
      pin_led_LOW;
    }
    else{
      pin_led_HIGH;
      pixel_and_params_grab(Frame);
      SERIAL_OUT.write(Frame, NUM_PIXS+6); // send frame in raw format
    }
  }
//-------------------------------------------------------------------------------------------
#elif debug_type ==3
//-------------------------------------------------------------------------------------------
  //листинг для электронных таблиц: В шапке названия, дальше только данные разделенные "tab".
  byte Frame[6];
  //заголовок
  SERIAL_OUT.println  (F  ("Squal:\tMax:\tMin:\tSum:\tShutter:"));
  while(1){
    params_grab(Frame);

    ByteToString(Frame[0]); SERIAL_OUT.write(Str[2]); SERIAL_OUT.write(Str[1]); SERIAL_OUT.write(Str[0]); SERIAL_OUT.write(0x09);
    ByteToString(Frame[1]); SERIAL_OUT.write(Str[2]); SERIAL_OUT.write(Str[1]); SERIAL_OUT.write(Str[0]); SERIAL_OUT.write(0x09);
    ByteToString(Frame[2]); SERIAL_OUT.write(Str[2]); SERIAL_OUT.write(Str[1]); SERIAL_OUT.write(Str[0]); SERIAL_OUT.write(0x09);
    ByteToString(Frame[3]); SERIAL_OUT.write(Str[2]); SERIAL_OUT.write(Str[1]); SERIAL_OUT.write(Str[0]); SERIAL_OUT.write(0x09);
    Uint16ToString(Frame[4] *256 + Frame[5]);
    SERIAL_OUT.write(Str[4]);
    SERIAL_OUT.write(Str[3]);
    SERIAL_OUT.write(Str[2]);
    SERIAL_OUT.write(Str[1]);
    SERIAL_OUT.write(Str[0]);
    SERIAL_OUT.write(0x0a);
    //SERIAL_OUT.write(0x0d);

#if SERIAL_SPEED > 115200
      delay(20);
#else
      delay(60);  //задержка больше из-за низкой скорости Serial
    #endif
  }
//-------------------------------------------------------------------------------------------
#elif debug_type ==4
//-------------------------------------------------------------------------------------------
  //Как 3-й режим, но по разрешению сигнала pin_TRIG (лог точно ограничен сигналом z_probe)
  byte Frame[12];
  SERIAL_OUT.println(F("Squal:\tMax:\tMin:\tSum:\tShutter:\tLSqual:\tLMax:\tLMin:\tLSum:\tLShutter:"));
  while(1){
    while(pin_TRIG_IN){
      //заголовок
		params_grab(Frame);
		pin_LASER_ON;
		params_grab(Frame+6);
		pin_LASER_OFF;
				
		ByteToString(Frame[0]); SERIAL_OUT.write(Str[2]); SERIAL_OUT.write(Str[1]); SERIAL_OUT.write(Str[0]); SERIAL_OUT.write(0x09);
		ByteToString(Frame[1]); SERIAL_OUT.write(Str[2]); SERIAL_OUT.write(Str[1]); SERIAL_OUT.write(Str[0]); SERIAL_OUT.write(0x09);
		ByteToString(Frame[2]); SERIAL_OUT.write(Str[2]); SERIAL_OUT.write(Str[1]); SERIAL_OUT.write(Str[0]); SERIAL_OUT.write(0x09);
		ByteToString(Frame[3]); SERIAL_OUT.write(Str[2]); SERIAL_OUT.write(Str[1]); SERIAL_OUT.write(Str[0]); SERIAL_OUT.write(0x09);
		Uint16ToString(Frame[4] * 256 + Frame[5]);
		SERIAL_OUT.write(Str[4]);
		SERIAL_OUT.write(Str[3]);
		SERIAL_OUT.write(Str[2]);
		SERIAL_OUT.write(Str[1]);
		SERIAL_OUT.write(Str[0]);
		SERIAL_OUT.write(0x09);
		
		ByteToString(Frame[6]); SERIAL_OUT.write(Str[2]); SERIAL_OUT.write(Str[1]); SERIAL_OUT.write(Str[0]); SERIAL_OUT.write(0x09);
		ByteToString(Frame[7]); SERIAL_OUT.write(Str[2]); SERIAL_OUT.write(Str[1]); SERIAL_OUT.write(Str[0]); SERIAL_OUT.write(0x09);
		ByteToString(Frame[8]); SERIAL_OUT.write(Str[2]); SERIAL_OUT.write(Str[1]); SERIAL_OUT.write(Str[0]); SERIAL_OUT.write(0x09);
		ByteToString(Frame[9]); SERIAL_OUT.write(Str[2]); SERIAL_OUT.write(Str[1]); SERIAL_OUT.write(Str[0]); SERIAL_OUT.write(0x09);
		Uint16ToString(Frame[10] * 256 + Frame[11]);
		SERIAL_OUT.write(Str[4]);
		SERIAL_OUT.write(Str[3]);
		SERIAL_OUT.write(Str[2]);
		SERIAL_OUT.write(Str[1]);
		SERIAL_OUT.write(Str[0]);
		SERIAL_OUT.write(0x0a);

#if SERIAL_SPEED > 115200
      //delay(10);
#else
      delay(60);  //задержка больше из-за низкой скорости Serial
#endif
    }
  }
//-------------------------------------------------------------------------------------------
#elif debug_type ==5
//-------------------------------------------------------------------------------------------
  while(1){
    unsigned int motion = 0;
    //check for movement
    motion = ADNS_read(Motion);
    if (motion > 127){
      //there has been a motion! Print the x and y movements
      SERIAL_OUT.println("X:" + String(ADNS_read(Delta_X)) + " Y:" + String(ADNS_read(Delta_Y)));
    }
  }
//-------------------------------------------------------------------------------------------
#endif
#endif
}

//###########################################################################################
// процедуры
//-------------------------------------------------------------------------------------------
void ADNS_reset(void){
#ifdef sens_type_ADNS_5020
  ADNS_write(0x3a,0x5a);
  delay(1000);
  ADNS_write(0x0d, 0x01);  // Set 1000cpi resolution
  delay(1000);
#endif
#if  defined(sens_type_ADNS_2610) || defined(sens_type_ADNS_2620)
  ADNS_write(Configuration,0x80);
  delay(1000);
  ADNS_write(Configuration,0x01); //Always awake
  ADNS_write(Frame_Period, FR_VALUE);
#endif
}

//-------------------------------------------------------------------------------------------
void ADNS_write(byte address, byte data){
  #if defined(use_nCS)
    pin_nCS_LOW;
  #endif
  // send in the address and value via SPI:
  address |= 0x80;  //признак записи адреса
  for (byte i = 0x80; i; i >>= 1){
    pin_nClock_LOW;
    address & i ? pin_SDIO_HIGH : pin_SDIO_LOW;
    asm volatile ("nop");
    pin_nClock_HIGH;
  }

  //delayMicroseconds(1);

  for (byte i = 0x80; i; i >>= 1){
    pin_nClock_LOW;
    data & i ? pin_SDIO_HIGH : pin_SDIO_LOW;
    asm volatile ("nop");
    pin_nClock_HIGH;
  }
  //t SWW. SPI Time between Write Commands
  delayMicroseconds(delay_tSWW);

  #if defined(use_nCS)
    pin_nCS_HIGH;
  #endif
}

//-------------------------------------------------------------------------------------------
byte ADNS_read(byte address){
  #if defined(use_nCS)
    pin_nCS_LOW;
  #endif

  address &= ~0x80;  //признак записи данных
  for (byte i = 0x80; i; i >>= 1){
    pin_nClock_LOW;
    address & i ? pin_SDIO_HIGH : pin_SDIO_LOW;
    asm volatile ("nop");
    pin_nClock_HIGH;
  }

  // prepare io pin for reading
  pin_SDIO_Mode_INPUT;

  // t SRAD. SPI Read Address-Data Delay
  delayMicroseconds(delay_tSRAD);

  // read the data
  byte data = 0;
  for (byte i = 8; i; i--){
    // tick, tock, read
    pin_nClock_LOW;
    asm volatile ("nop");
    pin_nClock_HIGH;
    data <<= 1;
    if (pin_SDIO_IN) data |= 0x01;
  }

  #if defined(use_nCS)
    pin_nCS_HIGH;
  #endif
  pin_SDIO_Mode_OUTPUT;

  // t SRW & t SRR = 1μs.
  delayMicroseconds(2);
  return data;
}
//-------------------------------------------------------------------------------------------
inline void pixel_grab(uint8_t *buffer, uint16_t nBytes) {
  uint8_t temp_byte;

  //reset the pixel grab counter
  ADNS_write(Pixel_Grab, 0x00);

  for (int count = 0; count < nBytes; count++) {
    while (1) {
      temp_byte = ADNS_read(Pixel_Grab);
      if (temp_byte & Pixel_data_valid) {
        break;
      }
    }
    *(buffer + count) = temp_byte & Mask_pixel_value;  // only n bits are used for data
  }
}
//-------------------------------------------------------------------------------------------
inline void params_grab(uint8_t *buffer) {
	uint8_t temp_byte;

	//reset the pixel grab counter
	ADNS_write(Pixel_Grab, 0x00);

	do {
		temp_byte = ADNS_read(Pixel_Grab);
	} while (!(temp_byte & Pixel_data_valid));

	delayMicroseconds(FR_DELAY);

	*(buffer + 0) = ADNS_read(squal);
	*(buffer + 1) = ADNS_read(Maximum_Pixel);
	*(buffer + 2) = ADNS_read(Minimum_Pixel);
	*(buffer + 3) = ADNS_read(Pixel_Sum);
	*(buffer + 4) = ADNS_read(Shutter_Upper);
	*(buffer + 5) = ADNS_read(Shutter_Lower);
}
//-------------------------------------------------------------------------------------------
inline void pixel_and_params_grab(uint8_t *buffer) {
	uint8_t *pParams = buffer + NUM_PIXS;
	pixel_grab(buffer, NUM_PIXS);
	*(pParams + 0) = ADNS_read(squal);
	*(pParams + 1) = ADNS_read(Maximum_Pixel);
	*(pParams + 2) = ADNS_read(Minimum_Pixel);
	*(pParams + 3) = ADNS_read(Pixel_Sum);
	*(pParams + 4) = ADNS_read(Shutter_Upper);
	*(pParams + 5) = ADNS_read(Shutter_Lower);
}
//-------------------------------------------------------------------------------------------
void ByteToString(uint8_t a){
  Str[0] = '0';
  Str[1] = '0';
  Str[2] = '0';
  if (!a) return;
  Str[0] = a % 10 + '0'; a /= 10;
  if (!a) return;
  Str[1] = a % 10 + '0'; a /= 10;
  if (!a) return;
  Str[2] = a % 10 + '0';
}
//-------------------------------------------------------------------------------------------
void Uint16ToString(uint16_t a){
  Str[0] = '0';
  Str[1] = '0';
  Str[2] = '0';
  Str[3] = '0';
  Str[4] = '0';
  if (!a) return;
  Str[0] = a % 10 + '0'; a /= 10;
  if (!a) return;
  Str[1] = a % 10 + '0'; a /= 10;
  if (!a) return;
  Str[2] = a % 10 + '0'; a /= 10;
  if (!a) return;
  Str[3] = a % 10 + '0'; a /= 10;
  if (!a) return;
  Str[4] = a % 10 + '0';
}
//-------------------------------------------------------------------------------------------
uint8_t ByteToAscii_h(uint8_t x){
  uint8_t tmpByte;

  tmpByte = (x >> 4) + 0x30;
  if (tmpByte > 0x39) { tmpByte += 0x07; }
  return tmpByte;
}
//-------------------------------------------------------------------------------------------
uint8_t ByteToAscii_l(uint8_t x){
  uint8_t tmpByte;
  tmpByte = (x & 0x0f) + 0x30;
  if (tmpByte > 0x39) { tmpByte += 0x07; }
  return tmpByte;
}
