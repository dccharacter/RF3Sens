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
#if defined(DEBUG_TYPE) && defined(SOFTWARE_SERIAL)
  #include <SendOnlySoftwareSerial.h>
#endif //#if defined(DEBUG_TYPE) && defined(SOFTWARE_SERIAL)

byte ADNS_read(uint8_t address);
void ADNS_reset(void);
void ADNS_write(uint8_t addr, uint8_t data);
inline void params_grab(uint8_t *buffer, uint8_t ifReset);
inline void pixel_grab(uint8_t *buffer, uint16_t nBytes); 
inline void pixel_and_params_grab(uint8_t *buffer);
inline uint8_t single_line_grab(uint8_t *buffer);
void RefrPowerLaser(uint16_t power, uint16_t value, uint16_t halfDev);
void ByteToString(uint8_t a);
void Uint16ToString(uint16_t a);

unsigned char Str[5];
int16_t RegPowLaser = 0;

void setup(){
  pinMode(3, OUTPUT);
  TCCR2A = 0;
  TCCR2B = 0;
  TCCR2A = _BV(COM2B1) | _BV(WGM21) | _BV(WGM20);
  TCCR2B = _BV(CS20); // no prescaler
  OCR2B = 50;

  pinMode(A5, INPUT);

  //set pin I/O direction
#if defined(USE_NCS)
  PIN_OUTPUT(NCS);
  PIN_HIGH(NCS);
#endif //USE_NCS
  PIN_OUTPUT(LED);
  PIN_HIGH(LED);
#if defined(DEBUG_TYPE) && defined(TRIG_PIN)
  PIN_INPUT(TRIG);
#endif //defined(DEBUG_TYPE) && defined(TRIG_PIN)


  PIN_OUTPUT(laser1_vcc);
  PIN_OUTPUT(laser2_vcc);
  PIN_OUTPUT(laser_pwm);
  analogWrite(9, 0); //preset all analogWrite values so I can just later change OCR1A

//initialize SPI
  PIN_OUTPUT(NCLOCK);
  PIN_HIGH(NCLOCK);
  PIN_OUTPUT(SDIO);
  PIN_LOW(SDIO);

//#if defined(DEBUG_TYPE)
  SERIAL_OUT.begin(SERIAL_SPEED);
//#endif // defined(DEBUG_TYPE)

  delay(1000);
  ADNS_reset();
}

void loop(){
//###########################################################################################
// штатный режим датчика для 3D принтера
#ifndef DEBUG_TYPE
  uint8_t Frame[NUM_PIXS + 7] = {0};
  uint8_t dataSum, dataSqual, lineMax;
  
  PIN_LOW(LED);

  PIN_LOW(laser1_vcc); //enable base laser
  analogWrite(9,130);

  while(1){
    params_grab(Frame, 1);
    dataSum = Frame[3];
    dataSqual = Frame[0];
    ByteToString(RegPowLaser); SERIAL_OUT.write(Str[2]); SERIAL_OUT.write(Str[1]);
      SERIAL_OUT.write(Str[0]); SERIAL_OUT.write(0x09);
    ByteToString(dataSum); SERIAL_OUT.write(Str[2]); SERIAL_OUT.write(Str[1]);
      SERIAL_OUT.write(Str[0]); SERIAL_OUT.write(0x09);
    if (dataSqual > 30) {
      lineMax = single_line_grab(Frame);
      ByteToString(lineMax); SERIAL_OUT.write('.'); SERIAL_OUT.write(Str[2]); SERIAL_OUT.write(Str[1]);
        SERIAL_OUT.write(Str[0]); SERIAL_OUT.write(0x0a);
      if (lineMax > 60) {
          PIN_HIGH(LED);
          delay(100);
      }
    }
    RefrPowerLaser(dataSum, 23, 2);
    SERIAL_OUT.write(0x0a);
    
    PIN_LOW(LED);
  }
//###########################################################################################
// отладочные режимы
#else //ifndef DEBUG_TYPE
//-------------------------------------------------------------------------------------------
#if DEBUG_TYPE ==1
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
    //dataMax = Frame[NUM_PIXS + 1];
    //lineMax = Frame[NUM_PIXS + 0];
    //lineMin = Frame[NUM_PIXS + 3];

    //RegPowLaser = (uint8_t)(analogRead(A5) >> 2);    
    //OCR2B = RegPowLaser;
    OCR2B += 1;
   //   }
     /* if (lineMax > 22) { //bingo!
        PIN_HIGH(LED);
        delay(200);
      } else {
        PIN_LOW(LED);
      }*/
    delay(1);
    //} else {
    //  PIN_LOW(LED);
    //}
    
    //SERIAL_OUT.write(Frame, NUM_PIXS + 7); delay(2);// send frame in raw format
  }
//-------------------------------------------------------------------------------------------
#elif DEBUG_TYPE ==2
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
#elif DEBUG_TYPE ==3
//-------------------------------------------------------------------------------------------
  //листинг для электронных таблиц: В шапке названия, дальше только данные разделенные "tab".
  byte Frame[7];
  uint8_t dataMax, lineMax, dataSum;
  //заголовок
  SERIAL_OUT.println  (F  ("Squal:\tMax:\tMin:\tSum:\tShutter:\tLaserPower:"));
  while(1){
//        RegPowLaser = OCR2B;    
//	OCR2B += 1;
//    params_grab(Frame);

    single_line_grab(Frame);
    dataMax = Frame[NUM_PIXS + 1];
    //dataMin = Frame[NUM_PIXS + 2];
    lineMax = Frame[NUM_PIXS + 0];
    dataSum = Frame[NUM_PIXS + 3];

    //if (dataMax - dataMin > 30) { //laser spot is visible, arm the sensor
    //  if (!(dataMax - dataMin > 40 && lineMax - lineMin > 7)) { //spot has not reached the last line
        //dataShutt = ((*(Frame + NUM_PIXS + 4)) << 8) + *(Frame + NUM_PIXS + 5);
    RefrPowerLaser(dataSum, 35, 2);
    //   }
    if (lineMax > 60) { //22 - bingo!
      PIN_HIGH(LED);
      delay(100);
    } else {
      PIN_LOW(LED);
}
    ByteToString(Frame[NUM_PIXS + 0]); SERIAL_OUT.write(Str[2]); SERIAL_OUT.write(Str[1]); SERIAL_OUT.write(Str[0]); SERIAL_OUT.write(0x09);
    ByteToString(Frame[NUM_PIXS + 1]); SERIAL_OUT.write(Str[2]); SERIAL_OUT.write(Str[1]); SERIAL_OUT.write(Str[0]); SERIAL_OUT.write(0x09);
    //ByteToString(Frame[2]); SERIAL_OUT.write(Str[2]); SERIAL_OUT.write(Str[1]); SERIAL_OUT.write(Str[0]); SERIAL_OUT.write(0x09);
    ByteToString(Frame[NUM_PIXS + 3]); SERIAL_OUT.write(Str[2]); SERIAL_OUT.write(Str[1]); SERIAL_OUT.write(Str[0]); SERIAL_OUT.write(0x09);
    Uint16ToString(Frame[NUM_PIXS + 4] *256 + Frame[NUM_PIXS + 5]);
    SERIAL_OUT.write(Str[4]);
    SERIAL_OUT.write(Str[3]);
    SERIAL_OUT.write(Str[2]);
    SERIAL_OUT.write(Str[1]);
    SERIAL_OUT.write(Str[0]);
    SERIAL_OUT.write(0x09);
    ByteToString(Frame[NUM_PIXS + 6]); SERIAL_OUT.write(Str[2]); SERIAL_OUT.write(Str[1]); SERIAL_OUT.write(Str[0]); SERIAL_OUT.write(0x09);
    SERIAL_OUT.write(0x0d);
    SERIAL_OUT.write(0x0a);

#if SERIAL_SPEED > 115200
      delay(20);
#else
      delay(60);  //задержка больше из-за низкой скорости Serial
#endif
  }
//-------------------------------------------------------------------------------------------
#elif DEBUG_TYPE ==4
//-------------------------------------------------------------------------------------------
  //Как 3-й режим, но по разрешению сигнала pin_TRIG
  byte Frame[7];
  PIN_OUTPUT(gpio1);
  PIN_LOW(gpio1);

  PIN_LOW(laser1_vcc); //enable base laser
  PIN_HIGH(laser2_vcc); //disable matrix laser
  RegPowLaser = 140;
  analogWrite(9, RegPowLaser);

  // начинаем с печати шапки
  SERIAL_OUT.println (F  ("Squal:\tMax:\tMin:\tSum:\tShutter:\tLaserPower:"));

  while(1){

    if(PIN_READ(TRIG)){ // каждое измерение начинается с сигнала триггера (взводится в g-коде)
      
      while(PIN_READ(TRIG));

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
      SERIAL_OUT.write(0x0d);

#if SERIAL_SPEED > 115200
      delay(20);
#else
      delay(60);  //задержка больше из-за низкой скорости Serial
#endif

    // после того, как считали значения и отправили их в сериал, даем марлину
    // сигнал о готовности к следующему шагу
    PIN_HIGH(gpio1);
    delay(40);
    PIN_LOW(gpio1);
    }
  }
//-------------------------------------------------------------------------------------------
#elif DEBUG_TYPE ==5
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
#elif DEBUG_TYPE ==6
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
#endif //SERIAL_SPEED > 115200
  }
#endif //DEBUG_TYPE
#endif // #else #ifndef DEBUG_TYPE
}

//###########################################################################################
// процедуры
//-------------------------------------------------------------------------------------------
void RefrPowerLaser(uint16_t power, uint16_t target_value, uint16_t halfDeviation)
{
  //if (abs((int16_t)target_value - (int16_t)power) > halfDeviation) {
    if (power < target_value) {
      RegPowLaser++;
    } else if (power > target_value) {
      RegPowLaser--;
    }
    if (RegPowLaser > 255) {
      RegPowLaser = 255;
    } else if (RegPowLaser < 0) {
      RegPowLaser = 0;
    }
    OCR2B = (uint8_t)RegPowLaser;
  //}
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
  delay(2);
  ADNS_write(ADNS_FRAME_PERIOD, 0xC2); //set framerate to 3000fps
  delay(2);
#endif
}

//-------------------------------------------------------------------------------------------
void ADNS_write(byte address, byte data){
  #if defined(USE_NCS)
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

  #if defined(USE_NCS)
    PIN_HIGH(NCS);
  #endif
}

//-------------------------------------------------------------------------------------------
byte ADNS_read(byte address){
  #if defined(USE_NCS)
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

  #if defined(USE_NCS)
    PIN_HIGH(NCS);
  #endif
  PIN_OUTPUT(SDIO);
  // t SRW & t SRR = 1μs.
  delayMicroseconds(2);
  return data;
}
//-------------------------------------------------------------------------------------------
inline uint8_t single_line_grab(uint8_t *buffer) {

  uint8_t temp_byte;
  //uint16_t nBytes = NUM_PIXS; //18;
  uint16_t nBytes = 18;
  uint8_t linePix = 18;
  uint8_t lineMax = 0;
  //uint8_t lineMin = 255; //determine max and min pix in data read

  //reset the pixel grab counter
  ADNS_write(ADNS_PIX_GRAB, 0x00);

  for (uint16_t count = 0; count < nBytes; count++) {
    while (1) {
      temp_byte = ADNS_read(ADNS_PIX_GRAB);
      if (temp_byte & ADNS_PIX_DATA_VALID) {
        break;
      }
    }
    temp_byte &= ADNS_MASK_PIX;
    *(buffer + count) = temp_byte;  // only n bits are used for data
    if (temp_byte > lineMax) {
      lineMax = temp_byte;
    }
    //if (temp_byte < lineMin) {
    //  lineMin = temp_byte;
    //}
  }

  return lineMax;
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
inline void params_grab(uint8_t *buffer, uint8_t ifReset) {
  if (ifReset) {
    uint8_t temp_byte;
    ADNS_write(ADNS_PIX_GRAB, 0x00);
    while (1) {
      temp_byte = ADNS_read(ADNS_PIX_GRAB);
      if (temp_byte & ADNS_PIX_DATA_VALID) {
        break;
      }
    }
  }
  *(buffer + 0) = ADNS_read(ADNS_SQUAL);
  *(buffer + 1) = ADNS_read(ADNS_MAX_PIX);
  *(buffer + 2) = ADNS_read(ADNS_MIN_PIX);
  *(buffer + 3) = ADNS_read(ADNS_PIX_SUM);
  *(buffer + 4) = ADNS_read(ADNS_SHUTTER_UPPER);
  *(buffer + 5) = ADNS_read(ADNS_SHUTTER_LOWER);
  *(buffer + 6) = (uint8_t)RegPowLaser;
}
//-------------------------------------------------------------------------------------------
inline void pixel_and_params_grab(uint8_t *buffer) {
	pixel_grab(buffer, NUM_PIXS);
	params_grab(buffer + NUM_PIXS, 0);
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
