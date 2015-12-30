//###########################################################################################
// RF3Sens (RoboForum triangulation range sensor)
// http://roboforum.ru/forum107/topic15929.html (official language for this forum - russian)
// MIT License
// 2015-2016
// Дмитрий Лилик (aka Dmitry__ @ RoboForum.ru)
// Андрей Пожогин (aka dccharacter  @ RoboForum.ru)
// Сергей Тараненко (aka setar @ RoboForum.ru)
//###########################################################################################

/* board_ArduinoNano_mcupower.h */

#define power_via_mcu // режим питания сенсора и лазера с ног микроконтроллера (подаем питание на нужные ноги)

#if defined(use_nCS)
  //pin_nCS  PB2 SS D10
  #define pin_nCS_bit        2
  #define pin_nCS_DDR        DDRB
  #define pin_nCS_PORT       PORTB
#endif 

//pin_led
//PD5 D5
#define pin_led_bit         5
#define pin_led_DDR         DDRD
#define pin_led_PORT        PORTD

//pin_nClock (SCK)
//PB2 D10
#define pin_nClock_bit      2
#define pin_nClock_DDR      DDRB
#define pin_nClock_PORT     PORTB

//MOSI
//PB5  D13
#define pin_SDIO_bit        5
#define pin_SDIO_DDR        DDRB
#define pin_SDIO_PORT       PORTB
#define pin_SDIO_PORT_IN    PINB

//PD5 D5 TRIGGER_PIN
#define pin_TRIG_bit         5
#define pin_TRIG_DDR         DDRD
#define pin_TRIG_PORT_IN     PORTD

#ifdef power_via_mcu
  // Sensor power GND
  //PB4 D12
  #define pin_sensor_gnd_bit   4
  #define pin_sensor_gnd_DDR   DDRB
  #define pin_sensor_gnd_PORT  PORTB
  // Sensor power vcc
  //PB3 D11
  #define pin_sensor_vcc_bit   3
  #define pin_sensor_vcc_DDR   DDRB
  #define pin_sensor_vcc_PORT  PORTB
  // laser power GND
  //PB4 D12
  //#define pin_laser_gnd_bit   4
  //#define pin_laser_gnd_DDR   DDRB
  //#define pin_laser_gnd_PORT  PORTB
  // laser power vcc
  //PD2 D2
  #define pin_laser_vcc_bit   2
  #define pin_laser_vcc_DDR   DDRD
  #define pin_laser_vcc_PORT  PORTD
#endif //power_via_mcu