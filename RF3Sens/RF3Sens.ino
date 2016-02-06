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
uint8_t RegPowLaser = 127;

void setup(){
  //set pin I/O direction
  #if defined(use_nCS)
    PIN_OUTPUT(nCS);
    PIN_HIGH(nCS);
  #endif
  PIN_OUTPUT(led);
  PIN_HIGH(led);
  #if defined(debug_type) && defined(TRIG_PIN)
    PIN_INPUT(TRIG);
  #endif

  #if defined(sens_power_via_mcu)
    #if defined(sensor_gnd_PIN)
      PIN_OUTPUT(sensor_gnd);
      PIN_LOW(sensor_gnd);
    #endif
    #if defined(sensor_vcc_PIN)
      PIN_OUTPUT(sensor_vcc);
      PIN_HIGH(sensor_vcc);
    #endif
  #endif // sens_power_via_mcu
  #if defined(laser_power_via_mcu)
    #if defined(laser_gnd_PIN)
      PIN_OUTPUT(laser_gnd);
      PIN_LOW(laser_gnd);
    #endif
    #if defined(laser_vcc_PIN)
      PIN_OUTPUT(laser_vcc);
      PIN_HIGH(laser_vcc);
      analogWrite(laser_vcc_PIN, RegPowLaser);//255=включить лазер , 0=выключить
    #endif
  #endif // laser_power_via_mcu

//initialize SPI
    PIN_OUTPUT(nClock);
    PIN_HIGH(nClock);
    PIN_OUTPUT(SDIO);
    PIN_LOW(SDIO);

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
  byte dataMax, dataAVG, dataSU, dataSqual;

  while(1){
    //dataMax = ADNS_read(Maximum_Pixel);
    //dataMax = ADNS_read(Pixel_Sum);
    //dataMax = ADNS_read(squal);
    /*
    dataSU = ADNS_read(Shutter_Upper);
    if (dataSU != 3){
      RefrPowerLaser(dataSU);
    }*/
    dataSqual = ADNS_read(squal);
    dataMax = ADNS_read(Maximum_Pixel);
    dataAVG = ADNS_read(Pixel_Sum);
    //dataMax > ConstMax  ? PIN_LOW(led) : PIN_HIGH(led);
    dataAVG < 65 && dataMax > ConstMax && dataSqual > 45 ? PIN_LOW(led) : PIN_HIGH(led);
    //dataMax > ConstMax && dataSqual > 45 ? PIN_LOW(led) : PIN_HIGH(led);
/*
    dataMax = ADNS_read(Maximum_Pixel);
    if (dataMax > ConstMax){
      dataSU = ADNS_read(Shutter_Upper);
      while(dataSU != 2 ){
        PIN_HIGH(led);
        RefrPowerLaser(dataSU);
        dataSU = ADNS_read(Shutter_Upper);
      }
      PIN_LOW(led);
      //dataMax = ADNS_read(Maximum_Pixel);
      //dataMax > ConstMax ? PIN_LOW(led) : PIN_HIGH(led);
    } else {
      PIN_HIGH(led);
      dataSU = ADNS_read(Shutter_Upper);
      RefrPowerLaser(dataSU);
    }
*/
    
/*    
    dataSU = ADNS_read(Shutter_Upper);
    if (dataSU < 3){
        dataMax = ADNS_read(Maximum_Pixel);
        RefrPowerLaser(dataMax);
        dataMax > ConstMax ? PIN_LOW(led) : PIN_HIGH(led);
    } else {
      PIN_HIGH(led);
    }
*/
  
    //dataMax > ConstMax ? PIN_LOW(led) : PIN_HIGH(led);
    //((dataSU == 0) && (dataSL < 60)) ? PIN_LOW(led) : PIN_HIGH(led);

/*
    PIN_HIGH(led);
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
    PIN_LOW(led);

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
  byte Frame[NUM_PIXS + 7],dataMax, dataSU;

  while(1){
    pixel_and_params_grab(Frame);
    SERIAL_OUT.write(Frame, NUM_PIXS + 7); // send frame in raw format
    dataSU = Frame[4+NUM_PIXS];
    dataMax = Frame[1+NUM_PIXS];
    //RefrPowerLaser(dataSU);
    //delay(2);
  }
//-------------------------------------------------------------------------------------------
#elif debug_type ==2
//-------------------------------------------------------------------------------------------
  byte Frame[NUM_PIXS + 7];

  byte data;
  while(1){
    //data = ADNS_read(squal);
    data = ADNS_read(Maximum_Pixel);
    //data = ADNS_read(Pixel_Sum);

    if(data > ConstMax){
      PIN_LOW(led);
    }
    else{
      PIN_HIGH(led);
      pixel_and_params_grab(Frame);
      SERIAL_OUT.write(Frame, NUM_PIXS+7); // send frame in raw format
    }
  }
//-------------------------------------------------------------------------------------------
#elif debug_type ==3
//-------------------------------------------------------------------------------------------
  //листинг для электронных таблиц: В шапке названия, дальше только данные разделенные "tab".
  byte Frame[7];
  //заголовок
  SERIAL_OUT.println  (F  ("Squal:\tMax:\tMin:\tSum:\tShutter:\tLaserPower:"));
  while(1){
    params_grab(Frame);

    ByteToString(Frame[0]); SERIAL_OUT.write(Str[2]); SERIAL_OUT.write(Str[1]); SERIAL_OUT.write(Str[0]); SERIAL_OUT.write(0x09);
    ByteToString(Frame[1]); SERIAL_OUT.write(Str[2]); SERIAL_OUT.write(Str[1]); SERIAL_OUT.write(Str[0]); SERIAL_OUT.write(0x09);
    ByteToString(Frame[2]); SERIAL_OUT.write(Str[2]); SERIAL_OUT.write(Str[1]); SERIAL_OUT.write(Str[0]); SERIAL_OUT.write(0x09);
    ByteToString(Frame[3]); SERIAL_OUT.write(Str[2]); SERIAL_OUT.write(Str[1]); SERIAL_OUT.write(Str[0]); SERIAL_OUT.write(0x09);
    Uint16ToString(Frame[4] *256 + Frame[5]);
    ByteToString(Frame[6]); SERIAL_OUT.write(Str[2]); SERIAL_OUT.write(Str[1]); SERIAL_OUT.write(Str[0]); SERIAL_OUT.write(0x09);
    SERIAL_OUT.write(Str[6]);
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
  byte Frame[7];
  while(1){
    if(PIN_IN(TRIG)){
      //заголовок
      SERIAL_OUT.println (F  ("Squal:\tMax:\tMin:\tSum:\tShutter:\tLaserPower:"));

      params_grab(Frame);

      ByteToString(Frame[0]); SERIAL_OUT.write(Str[2]); SERIAL_OUT.write(Str[1]); SERIAL_OUT.write(Str[0]); SERIAL_OUT.write(0x09);
      ByteToString(Frame[1]); SERIAL_OUT.write(Str[2]); SERIAL_OUT.write(Str[1]); SERIAL_OUT.write(Str[0]); SERIAL_OUT.write(0x09);
      ByteToString(Frame[2]); SERIAL_OUT.write(Str[2]); SERIAL_OUT.write(Str[1]); SERIAL_OUT.write(Str[0]); SERIAL_OUT.write(0x09);
      ByteToString(Frame[3]); SERIAL_OUT.write(Str[2]); SERIAL_OUT.write(Str[1]); SERIAL_OUT.write(Str[0]); SERIAL_OUT.write(0x09);
      Uint16ToString(Frame[4] *256 + Frame[5]);
      ByteToString(Frame[6]); SERIAL_OUT.write(Str[2]); SERIAL_OUT.write(Str[1]); SERIAL_OUT.write(Str[0]); SERIAL_OUT.write(0x09);
      SERIAL_OUT.write(Str[6]);
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
void RefrPowerLaser(uint8_t dataSU)
{
  if (dataSU < 3 ){
      while (dataSU < 3 && RegPowLaser > 1){
          RegPowLaser--;
          analogWrite(laser_vcc_PIN,RegPowLaser);
          delayMicroseconds(800);
          dataSU = ADNS_read(Shutter_Upper);
      }
  }else if (dataSU > 3){
      while( dataSU > 3 && RegPowLaser < 255){
          RegPowLaser++;
          analogWrite(laser_vcc_PIN,RegPowLaser);
          delayMicroseconds(800);
          dataSU = ADNS_read(Shutter_Upper);
      }
  }
}

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
#endif
}

//-------------------------------------------------------------------------------------------
void ADNS_write(byte address, byte data){
  #if defined(use_nCS)
    PIN_LOW(nCS);
  #endif
  // send in the address and value via SPI:
  address |= 0x80;  //признак записи адреса
  for (byte i = 0x80; i; i >>= 1){
    PIN_LOW(nClock);
    address & i ? PIN_HIGH(SDIO) : PIN_LOW(SDIO);
    asm volatile ("nop");
    PIN_HIGH(nClock);
  }

  //delayMicroseconds(1);

  for (byte i = 0x80; i; i >>= 1){
    PIN_LOW(nClock);
    data & i ? PIN_HIGH(SDIO) : PIN_LOW(SDIO);
    asm volatile ("nop");
    PIN_HIGH(nClock);
  }
  //t SWW. SPI Time between Write Commands
  delayMicroseconds(delay_tSWW);

  #if defined(use_nCS)
    PIN_HIGH(nCS);
  #endif
}

//-------------------------------------------------------------------------------------------
byte ADNS_read(byte address){
  #if defined(use_nCS)
    PIN_LOW(nCS);
  #endif

  address &= ~0x80;  //признак записи данных
  for (byte i = 0x80; i; i >>= 1){
    PIN_LOW(nClock);
    address & i ? PIN_HIGH(SDIO) : PIN_LOW(SDIO);
    asm volatile ("nop");
    PIN_HIGH(nClock);
  }

  // prepare io pin for reading
  PIN_INPUT(SDIO);

  // t SRAD. SPI Read Address-Data Delay
  delayMicroseconds(delay_tSRAD);

  // read the data
  byte data = 0;
  for (byte i = 8; i; i--){
    // tick, tock, read
    PIN_LOW(nClock);
    asm volatile ("nop");
    PIN_HIGH(nClock);
    data <<= 1;
    if (PIN_IN(SDIO)) data |= 0x01;
  }

  #if defined(use_nCS)
    PIN_HIGH(nCS);
  #endif
  PIN_OUTPUT(SDIO);

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
	*(buffer + 0) = ADNS_read(squal);
	*(buffer + 1) = ADNS_read(Maximum_Pixel);
	*(buffer + 2) = ADNS_read(Minimum_Pixel);
	*(buffer + 3) = ADNS_read(Pixel_Sum);
	*(buffer + 4) = ADNS_read(Shutter_Upper);
	*(buffer + 5) = ADNS_read(Shutter_Lower);
  *(buffer + 6) = RegPowLaser;
}
//-------------------------------------------------------------------------------------------
inline void pixel_and_params_grab(uint8_t *buffer) {
	params_grab((buffer + NUM_PIXS));
	pixel_grab(buffer, NUM_PIXS);
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
