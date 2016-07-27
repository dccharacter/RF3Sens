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
#endif //#if defined(debug_type) && defined(software_serial)

byte ADNS_read(uint8_t address);
void ADNS_reset(void);
void ADNS_write(uint8_t addr, uint8_t data);
inline void params_grab(uint8_t *buffer);
inline void pixel_grab(uint8_t *buffer, uint16_t nBytes); 
inline void pixel_and_params_grab(uint8_t *buffer);
inline void single_line_grab(uint8_t *buffer);
void RefrPowerLaser(uint16_t power, uint16_t value, uint16_t halfDev);
void ByteToString(uint8_t a);
void Uint16ToString(uint16_t a);

unsigned char Str[5];
uint8_t RegPowLaser = 200;

void setup(){
  //set pin I/O direction
  #if defined(use_NCS)
    PIN_OUTPUT(NCS);
    PIN_HIGH(NCS);
  #endif //use_NCS
  PIN_OUTPUT(LED);
  PIN_HIGH(LED);
  #if defined(debug_type) && defined(TRIG_PIN)
    PIN_INPUT(TRIG);
  #endif //defined(debug_type) && defined(TRIG_PIN)


      PIN_OUTPUT(laser1_vcc);
      PIN_OUTPUT(laser2_vcc);
      PIN_OUTPUT(laser_pwm);
      analogWrite(9, 0); //preset all analogWrite values so I can just later change OCR1A

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

  byte Frame[NUM_PIXS + 7] = {0}, dataMax, dataMin;
  uint16_t shutt;
  PIN_LOW(LED);

  PIN_LOW(laser1_vcc); //enable base laser
  PIN_HIGH(laser2_vcc); //disable matrix laser

  while(1){
    single_line_grab(Frame);
    shutt = ((*(buffer + NUM_PIXS + 4)) << 8) + *(buffer + NUM_PIXS + 5);
    RefrPowerLaser(shutt);
  }
//-------------------------------------------------------------------------------------------
  }
//###########################################################################################
// отладочные режимы
#else
//-------------------------------------------------------------------------------------------
#if debug_type ==1
//-------------------------------------------------------------------------------------------
  byte Frame[NUM_PIXS + 7] = {0}, dataMax, lineMax;
  byte dataMin, lineMin;
  //uint8_t laserId = 2; // 0 = off; 1 = laser 1; 2 = laser 2; 
  //uint16_t dataShutt;
  
  PIN_LOW(LED);

  PIN_LOW(laser1_vcc); //enable base laser
  PIN_HIGH(laser2_vcc); //disable matrix laser
  analogWrite(9,130);

  while(1){
    //pixel_and_params_grab(Frame);
    single_line_grab(Frame);
    dataMax = Frame[NUM_PIXS + 1];
    //dataMin = Frame[NUM_PIXS + 2];
    lineMax = Frame[NUM_PIXS + 0];
    lineMin = Frame[NUM_PIXS + 3];
    //if (dataMax - dataMin > 30) { //laser spot is visible, arm the sensor
      if (!(dataMax - dataMin > 40 && lineMax - lineMin > 7)) { //spot has not reached the last line
        //dataShutt = ((*(Frame + NUM_PIXS + 4)) << 8) + *(Frame + NUM_PIXS + 5);
        RefrPowerLaser(dataMax, 50, 0);
      }
      if (lineMax > 20) { //bingo!
        PIN_HIGH(LED);
        delay(500);
      } else {
        PIN_LOW(LED);
      }
    //} else {
    //  PIN_LOW(LED);
    //}
    
    //SERIAL_OUT.write(Frame, NUM_PIXS + 7); delay(2);// send frame in raw format
    //SERIAL_OUT.write(Frame, 144); // send frame in raw format
    //SERIAL_OUT.write(Frame, NUM_PIXS + 7 - 144); // send frame in raw format
    //dataSU = Frame[4+NUM_PIXS];
    //dataMax = Frame[1+NUM_PIXS];
    //RefrPowerLaser(dataSU);
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
void RefrPowerLaser(uint16_t power, uint16_t value, uint16_t halfDev)
{
  if (power < value - halfDev && RegPowLaser < 255){
    RegPowLaser++;
    //analogWrite(9,RegPowLaser);
    OCR1A = RegPowLaser;
  }
  if (power > value + halfDev && RegPowLaser > 1){
    RegPowLaser--;
    //analogWrite(9,RegPowLaser);
    OCR1A = RegPowLaser;
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
  ADNS_write(ADNS_CONF,0x80);
  delay(1000);
  ADNS_write(ADNS_CONF,0x01); //Always awake
  ADNS_write(ADNS_FRAME_PERIOD, 0xE0); //set framerate to 3000fps
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
inline void single_line_grab(uint8_t *buffer) {
  uint8_t temp_byte;
  //uint16_t nBytes = NUM_PIXS; //18;
  uint16_t nBytes = 18;
  uint8_t linePix = 18;
  uint8_t lineMax = 0, lineMin = 255; //determine max and min pix in data read

  //reset the pixel grab counter
  ADNS_write(ADNS_PIX_GRAB, 0x00);

  /*while (1) {
    temp_byte = ADNS_read(ADNS_PIX_GRAB);
    if (temp_byte & (ADNS_PIX_DATA_VALID | ADNS_DATA_SOF)) {
      break;
    }
  }
  *buffer = temp_byte & ADNS_MASK_PIX;  // only n bits are used for data*/
  for (uint16_t count = 0; count < nBytes; count++) {
    while (1) {
      temp_byte = ADNS_read(ADNS_PIX_GRAB);
      if (temp_byte & ADNS_PIX_DATA_VALID) {
        break;
      }
    }
    temp_byte &= ADNS_MASK_PIX;
    *(buffer + count) = temp_byte;  // only n bits are used for data
    if (count < linePix) {
      if (temp_byte > lineMax) {
        lineMax = temp_byte;
      }
      if (temp_byte < lineMin) {
        lineMin = temp_byte;
      }
    }
  }

  *(buffer + NUM_PIXS + 1) = ADNS_read(ADNS_MAX_PIX);
  *(buffer + NUM_PIXS + 2) = ADNS_read(ADNS_MIN_PIX);
  *(buffer + NUM_PIXS + 4) = ADNS_read(ADNS_SHUTTER_UPPER);
  *(buffer + NUM_PIXS + 5) = ADNS_read(ADNS_SHUTTER_LOWER);
  *(buffer + NUM_PIXS + 6) = RegPowLaser;
  *(buffer + NUM_PIXS + 0) = lineMax;
  *(buffer + NUM_PIXS + 3) = lineMin;

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
