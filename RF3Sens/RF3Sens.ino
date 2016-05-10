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

byte ADNS_read(uint8_t address);
void ADNS_reset(void);
void ADNS_write(uint8_t addr, uint8_t data);
inline void params_grab(uint8_t *buffer);
inline void pixel_grab(uint8_t *buffer, uint16_t nBytes); 
inline void pixel_and_params_grab(uint8_t *buffer);
void ByteToString(uint8_t a);
void Uint16ToString(uint16_t a);

unsigned char Str[5];
uint8_t RegPowLaser = 200;

void setup(){
  //set pin I/O direction
  #if defined(use_NCS)
    PIN_OUTPUT(NCS);
    PIN_HIGH(NCS);
  #endif
  PIN_OUTPUT(LED);
  PIN_HIGH(LED);
  #if defined(debug_type) && defined(TRIG_PIN)
    PIN_INPUT(TRIG);
  #endif

  #if defined(sens_power_via_mcu)
    #if defined(SENS_GND_PIN)
      PIN_OUTPUT(SENS_GND);
      PIN_LOW(SENS_GND);
    #endif
    #if defined(SENS_VCC_PIN)
      PIN_OUTPUT(SENS_VCC);
      PIN_HIGH(SENS_VCC);
    #endif
  #endif // sens_power_via_mcu
  #if defined(laser_power_via_mcu)
    #if defined(LASER_GND_PIN)
      PIN_OUTPUT(LASER_GND);
      PIN_LOW(LASER_GND);
    #endif
    #if defined(LASER_VCC_PIN)
      PIN_OUTPUT(LASER_VCC);
      PIN_HIGH(LASER_VCC);
      analogWrite(LASER_VCC_PIN, RegPowLaser);//255=включить лазер , 0=выключить
    #endif
  #endif // laser_power_via_mcu
      PIN_OUTPUT(laser1_vcc);
      PIN_OUTPUT(laser2_vcc);

//initialize SPI
    PIN_OUTPUT(NCLOCK);
    PIN_HIGH(NCLOCK);
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

#if defined(Algo_MaxPix)
  byte dataMax;
#endif

#if defined(Algo_MaxSqualMA)
  #define MA_LONG 20 // глубина длинной среднескользящей
  #define MA_SHORT 5 // глубина короткой среднескользящей
  byte dataSqual[MA_LONG];
  float MALongSqual,MAShortSqual;
  boolean laser_in_sight=false, sensed = false, SqualGrow = false;

  for (byte x=0 ; x<MA_LONG ; x++){dataSqual[x]=0;};
  MALongSqual=0; MAShortSqual=0;
#endif
  
#if defined( ARDUINO_NANO_DOUBLE_LASER)
    uint8_t dataMax, dataMax_prev;
    uint8_t dataSqual, dataSqual_prev;
    uint8_t dataSL, dataSU;
    uint16_t dataS, dataS_prev;
    uint8_t laserId=1;
#endif

  while(1){
#if defined( ARDUINO_NANO_DOUBLE_LASER)
    dataMax = ADNS_read(ADNS_MAX_PIX);
    dataSqual = ADNS_read(ADNS_PIX_SUM);
    //dataSU = ADNS_read(ADNS_SHUTTER_UPPER);
    //dataSL = ADNS_read(ADNS_SHUTTER_LOWER);
  if (laserId == 2) {
	  PIN_HIGH(laser1_vcc);
	  PIN_LOW(laser2_vcc);
	  laserId = 1;
  } else {
	  PIN_HIGH(laser2_vcc);
	  PIN_LOW(laser1_vcc);
	  laserId = 2;
  }
  PIN_LOW(LED);
  if (dataMax > 60 && dataMax_prev > 60) {
	  //dataS = dataSL + 256 * dataSU;
	  if(abs(dataSqual - dataSqual_prev) < 1) {
		  PIN_HIGH(LED);
	  }
  }
  //dataS_prev = dataS;
  dataMax_prev = dataMax;
  dataSqual_prev = dataSqual;
  delay(1);
#endif

//-------------------------------------------------------------------------------------------
#if defined(Algo_MaxPix)
    dataMax = ADNS_read(ADNS_MAX_PIX);
    //RefrPowerLaser(dataMax);
    dataMax > ADNS_CONST_MAX ? PIN_LOW(LED) : PIN_HIGH(LED);
#endif //Algo_MaxPix
//-------------------------------------------------------------------------------------------
#if defined(Algo_MaxSqualMA)
    if (laser_in_sight){ // пятно лазера в поле зрения 
      if (sensed){// максимум качества поверхности пройден
        PIN_LOW(LED);
        dataMax = ADNS_read(ADNS_MAX_PIX);
        dataMax>ADNS_CONST_MAX ? laser_in_sight=true : laser_in_sight=false;
      } else { // поиск максимума качества
        MALongSqual=MALongSqual-dataSqual[MA_LONG-1]/MA_LONG;
        MAShortSqual=MAShortSqual-dataSqual[MA_SHORT-1]/MA_SHORT;
        for (byte x=MA_LONG-1 ; x>0 ; x--){dataSqual[x]=dataSqual[x-1];}
        dataSqual[0] = ADNS_read(ADNS_SQUAL);
        MALongSqual=MALongSqual+dataSqual[0]/MA_LONG;
        MAShortSqual=MAShortSqual+dataSqual[0]/MA_SHORT;
        if ( (MALongSqual+1) < MAShortSqual){ //качество поверхности растет
          SqualGrow = true;
        }else if (SqualGrow && MALongSqual > (MAShortSqual+1)){// качество уменьшается, лучше не станет - срабатываем
          PIN_LOW(LED); sensed=true; SqualGrow = false;
          MALongSqual=0; MAShortSqual=0;
          for (byte x=0 ; x<MA_LONG ; x++){dataSqual[x]=0;};
        }
      }
    } else { // пятна лазера в поле зрения нету
      PIN_HIGH(LED); sensed=false;
      dataMax = ADNS_read(ADNS_MAX_PIX);
      dataMax>ADNS_CONST_MAX ? laser_in_sight=true : laser_in_sight=false;
    }
#endif // Algo_MaxSqualMA
//-------------------------------------------------------------------------------------------
  }
//###########################################################################################
// отладочные режимы
#else
//-------------------------------------------------------------------------------------------
#if debug_type ==1
//-------------------------------------------------------------------------------------------
  byte Frame[NUM_PIXS + 7],dataMax, dataSU;
  uint8_t laserId = 2; // 0 = off; 1 = laser 1; 2 = laser 2; 
  PIN_LOW(LED);

  while(1){
    pixel_and_params_grab(Frame);
  if (laserId == 2) {
	  PIN_HIGH(laser1_vcc);
	  PIN_LOW(laser2_vcc);
	  laserId = 1;
  } else {
	  PIN_HIGH(laser2_vcc);
	  PIN_LOW(laser1_vcc);
	  laserId = 2;
  }
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
    //data = ADNS_read(ADNS_SQUAL);
    data = ADNS_read(ADNS_MAX_PIX);
    //data = ADNS_read(ADNS_PIX_SUM);

    if(data > ADNS_CONST_MAX){
      PIN_LOW(LED);
    }
    else{
      PIN_HIGH(LED);
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
    SERIAL_OUT.write(Str[4]);
    SERIAL_OUT.write(Str[3]);
    SERIAL_OUT.write(Str[2]);
    SERIAL_OUT.write(Str[1]);
    SERIAL_OUT.write(Str[0]);
    SERIAL_OUT.write(0x09);
    ByteToString(Frame[6]); SERIAL_OUT.write(Str[2]); SERIAL_OUT.write(Str[1]); SERIAL_OUT.write(Str[0]); SERIAL_OUT.write(0x09);
    SERIAL_OUT.write(0x0d);
    SERIAL_OUT.write(0x0a);

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
    if(PIN_READ(TRIG)){
      //заголовок
      SERIAL_OUT.println (F  ("Squal:\tMax:\tMin:\tSum:\tShutter:\tLaserPower:"));

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
      SERIAL_OUT.write(0x09);
      ByteToString(Frame[6]); SERIAL_OUT.write(Str[2]); SERIAL_OUT.write(Str[1]); SERIAL_OUT.write(Str[0]); SERIAL_OUT.write(0x09);
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
    motion = ADNS_read(ADNS_MOTION);
    if (motion > 127){
      //there has been a motion! Print the x and y movements
      SERIAL_OUT.println("X:" + String(ADNS_read(ADNS_DELTA_X)) + " Y:" + String(ADNS_read(ADNS_DELTA_Y)));
    }
  }
//-------------------------------------------------------------------------------------------
#elif debug_type ==6
//-------------------------------------------------------------------------------------------
  uint8_t Frame[7];
  uint8_t laserId = 2; // 0 = off; 1 = laser 1; 2 = laser 2; 
  //заголовок

  SERIAL_OUT.println  (F  ("Squal:\tMax:\tMin:\tSum:\tShutter:\tLaserId:"));
  while(1){
    params_grab(Frame);

  if (laserId == 2) {
	  PIN_HIGH(laser1_vcc);
	  PIN_LOW(laser2_vcc);
	  laserId = 1;
  } else {
	  PIN_HIGH(laser2_vcc);
	  PIN_LOW(laser1_vcc);
	  laserId = 2;
  }
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
    SERIAL_OUT.write(0x09);
    ByteToString(laserId); SERIAL_OUT.write(Str[2]); SERIAL_OUT.write(Str[1]); SERIAL_OUT.write(Str[0]); SERIAL_OUT.write(0x09);
    SERIAL_OUT.write(0x0d);
    SERIAL_OUT.write(0x0a);

#if SERIAL_SPEED > 115200
      delay(20);
#else
      delay(60);  //задержка больше из-за низкой скорости Serial
#endif
  }
#endif
#endif
}

//###########################################################################################
// процедуры
//-------------------------------------------------------------------------------------------
#if defined(laser_power_via_mcu)
void RefrPowerLaser(uint8_t power)
{
  if (power < 3 && RegPowLaser > 1){
    RegPowLaser--;
    analogWrite(LASER_VCC_PIN,RegPowLaser);
  }
  if (power > 3 && RegPowLaser < 255){
    RegPowLaser++;
    analogWrite(LASER_VCC_PIN,RegPowLaser);
  }
}
#endif
//-------------------------------------------------------------------------------------------
void ADNS_reset(void){
#ifdef sens_type_ADNS_5020
  ADNS_write(0x3a,0x5a);
  delay(1000);
  ADNS_write(0x0d, 0x01);  // Set 1000cpi resolution
  delay(1000);
#endif
#if  defined(sens_type_ADNS_2610) || defined(sens_type_ADNS_2620)
  ADNS_write(ADNS_CONF,0x80);
  delay(1000);
  ADNS_write(ADNS_CONF,0x01); //Always awake
#endif
}

//-------------------------------------------------------------------------------------------
void ADNS_write(byte address, byte data){
  #if defined(use_NCS)
    PIN_LOW(NCS);
  #endif
  // send in the address and value via SPI:
  address |= 0x80;  //признак записи адреса
  for (byte i = 0x80; i; i >>= 1){
    PIN_LOW(NCLOCK);
    address & i ? PIN_HIGH(SDIO) : PIN_LOW(SDIO);
    asm volatile ("nop");
    PIN_HIGH(NCLOCK);
  }

  //delayMicroseconds(1);

  for (byte i = 0x80; i; i >>= 1){
    PIN_LOW(NCLOCK);
    data & i ? PIN_HIGH(SDIO) : PIN_LOW(SDIO);
    asm volatile ("nop");
    PIN_HIGH(NCLOCK);
  }
  //t SWW. SPI Time between Write Commands
  delayMicroseconds(ADNS_DELAY_TSWW);

  #if defined(use_NCS)
    PIN_HIGH(NCS);
  #endif
}

//-------------------------------------------------------------------------------------------
byte ADNS_read(byte address){
  #if defined(use_NCS)
    PIN_LOW(NCS);
  #endif

  address &= ~0x80;  //признак записи данных
  for (byte i = 0x80; i; i >>= 1){
    PIN_LOW(NCLOCK);
    address & i ? PIN_HIGH(SDIO) : PIN_LOW(SDIO);
    asm volatile ("nop");
    PIN_HIGH(NCLOCK);
  }

  // prepare io pin for reading
  PIN_INPUT(SDIO);

  // t SRAD. SPI Read Address-Data Delay
  delayMicroseconds(ADNS_DELAY_TSRAD);

  // read the data
  byte data = 0;
  for (byte i = 8; i; i--){
    // tick, tock, read
    PIN_LOW(NCLOCK);
    asm volatile ("nop");
    PIN_HIGH(NCLOCK);
    data <<= 1;
    if (PIN_READ(SDIO)) data |= 0x01;
  }

  #if defined(use_NCS)
    PIN_HIGH(NCS);
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
  ADNS_write(ADNS_PIX_GRAB, 0x00);

  for (uint16_t count = 0; count < nBytes; count++) {
    while (1) {
      temp_byte = ADNS_read(ADNS_PIX_GRAB);
      if (temp_byte & ADNS_PIX_DATA_VALID) {
        break;
      }
    }
    *(buffer + count) = temp_byte & ADNS_MASK_PIX;  // only n bits are used for data
  }
}
//-------------------------------------------------------------------------------------------
inline void params_grab(uint8_t *buffer) {
	*(buffer + 0) = ADNS_read(ADNS_SQUAL);
	*(buffer + 1) = ADNS_read(ADNS_MAX_PIX);
	*(buffer + 2) = ADNS_read(ADNS_MIN_PIX);
	*(buffer + 3) = ADNS_read(ADNS_PIX_SUM);
	*(buffer + 4) = ADNS_read(ADNS_SHUTTER_UPPER);
	*(buffer + 5) = ADNS_read(ADNS_SHUTTER_LOWER);
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
