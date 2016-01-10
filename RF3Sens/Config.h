//###########################################################################################
// RF3Sens (RoboForum triangulation range sensor)
// http://roboforum.ru/forum107/topic15929.html (official language for this forum - russian)
// MIT License
// 2015-2016
// Дмитрий Лилик (aka Dmitry__ @ RoboForum.ru)
// Андрей Пожогин (aka dccharacter  @ RoboForum.ru)
// Сергей Тараненко (aka setar @ RoboForum.ru)
//###########################################################################################

/* Config.h */
//###########################################################################################
//        Ручные настройки
//###########################################################################################
/*
При отсутствии флага debug_type, программа быстро обрабатывает соотв. регистр и выдает данные на led (штатная работа принтера).
При установленном флаге debug_type, по serial port передаются данные:
debug_type = 1  Передача картинки для фокусировки обьектива, колич. байт = ARRAY_WIDTH * ARRAY_HEIGHT
debug_type = 2  Для теста точности позиционирования (идея dccharacter-а). 
                Поиск порога как в штатном режиме (важна скорость), как только сработает порог - выдача картинки в serial port
debug_type = 3  Передача в текстовом виде на терминал данных: Max_Pix, Min_Pix, Pix_Sum, Shutter
debug_type = 4  Как 3-й режим, но по разрешению сигнала pin_TRIG (лог точно ограничен сигналом z_probe)
debug_type = 5  Данные перемещения мышки.
*/
#define debug_type  4
#define NUM_SAMPLES_PER_MEASURE 5 //количество данных для 4-го режима

/*
Актуально только если есть флаг debug_type
Если определено то применяется программный Serial порт (только одна нога для передачи данных)
Для платы Digispark это единственный вариант и автоматически включается на 1 ногу
Если не определено, для дебага используется Hardware Serial
*/
//#define software_serial 1 // одновременно и признак софтового serial и номер ноги для передачи данных (TX PIN)
#define SERIAL_SPEED 230400

/*
Тип сенсора, выбрать один нужный
*/
//#define sens_type_ADNS_5020
//#define sens_type_ADNS_2610
#define sens_type_ADNS_2620

/*
Frame Rate calculation
*/
#define FRAME_RATE 3000

/*
Тип контроллера, выбрать один нужный
*/
//#define DIGI_SPARK
#define ARDUINO_NANO // базовая распайка arduino nano
//#define ARDUINON_NANO_wPOWER  // распайка сенсора на arduino nano для питания с ног микроконтроллера

//###########################################################################################
//        Конец ручных настроек
//###########################################################################################



//###########################################################################################
//        Подключение библиотек 
//###########################################################################################
#if defined(sens_type_ADNS_5020)
  #include "sensor_ADNS_5020.h"
#endif
#if defined(sens_type_ADNS_2610)
  #include "sensor_ADNS_2610.h"
#endif
#if defined(sens_type_ADNS_2620)
  #include "sensor_ADNS_2620.h"
#endif

#if defined(DIGI_SPARK)
#include "board_Digispark.h"
#endif
#if defined(ARDUINO_NANO)
#include "board_ArduinoNano.h"
#endif
#if defined(ARDUINON_NANO_wPOWER)
#include "board_ArduinoNano_wPower.h"
#endif

#if defined(debug_type) && defined(software_serial)
  #include <SendOnlySoftwareSerial.h>
  SendOnlySoftwareSerial MyDbgSerial(software_serial, false); //true allows to connect to a regular RS232 without RS232 line driver
  #define SERIAL_OUT MyDbgSerial
#else
  #define SERIAL_OUT Serial
#endif

//###########################################################################################
//        Определения
//###########################################################################################
#if defined(use_nCS)
  #define pin_nCS_Mode_OUTPUT     pin_nCS_DDR       |= (1<<pin_nCS_bit)
  #define pin_nCS_LOW             pin_nCS_PORT      &=~(1<<pin_nCS_bit)
  #define pin_nCS_HIGH            pin_nCS_PORT      |= (1<<pin_nCS_bit)
#else
  #define pin_nCS_Mode_OUTPUT
  #define pin_nCS_LOW
  #define pin_nCS_HIGH
#endif 

#if defined(debug_type) && defined(__AVR_ATtiny85__)
  #define pin_led_Mode_OUTPUT   1
  #define pin_led_HIGH          1
  #define pin_led_LOW           1
  #define pin_led_Toggle        1
#else
  #define pin_led_Mode_OUTPUT   pin_led_DDR       |= (1<<pin_led_bit)
  #define pin_led_HIGH          pin_led_PORT      |= (1<<pin_led_bit)
  #define pin_led_LOW           pin_led_PORT      &=~(1<<pin_led_bit)
  #define pin_led_Toggle        pin_led_PORT      ^= (1<<pin_led_bit)
#endif

#define pin_nClock_Mode_OUTPUT  pin_nClock_DDR    |= (1<<pin_nClock_bit)
#define pin_nClock_LOW          pin_nClock_PORT   &=~(1<<pin_nClock_bit)
#define pin_nClock_HIGH         pin_nClock_PORT   |= (1<<pin_nClock_bit)

#define pin_SDIO_Mode_INPUT     pin_SDIO_DDR      &=~(1<<pin_SDIO_bit)
#define pin_SDIO_Mode_OUTPUT    pin_SDIO_DDR      |= (1<<pin_SDIO_bit)
#define pin_SDIO_LOW            pin_SDIO_PORT     &=~(1<<pin_SDIO_bit)
#define pin_SDIO_HIGH           pin_SDIO_PORT     |= (1<<pin_SDIO_bit)
#define pin_SDIO_IN             pin_SDIO_PORT_IN  &  (1<<pin_SDIO_bit)

#define pin_TRIG_Mode_INPUT     pin_TRIG_DDR      &=~(1<<pin_TRIG_bit)
#define pin_TRIG_IN             pin_TRIG_PORT_IN  &  (1<<pin_TRIG_bit)

// LASER control - PINS 8, 9 and 10 == PB0 & PB1 & PB2
#define pin_led_DDR         DDRB
#define pin_led_PORT        PORTB
#define pin_LASER_Mode_OUTPUT  (pin_nClock_DDR    |= 0x07)
#define pin_LASER_OFF          (pin_nClock_PORT   &=~0x07)//;delayMicroseconds(1000)
#define pin_LASER_ON           (pin_nClock_PORT   |= 0x07)//;delayMicroseconds(1000)


#define NUM_PIXS (ARRAY_WIDTH * ARRAY_HEIGHT)

#ifdef power_via_mcu
  #ifdef pin_sensor_gnd_bit
    #define pin_sensor_gnd_OUTPUT  pin_sensor_gnd_DDR    |= (1<<pin_sensor_gnd_bit)
    #define pin_sensor_gnd_LOW     pin_sensor_gnd_PORT   &=~(1<<pin_sensor_gnd_bit)
  #endif
  #ifdef pin_sensor_vcc_bit
    #define pin_sensor_vcc_OUTPUT  pin_sensor_vcc_DDR    |= (1<<pin_sensor_vcc_bit)
    #define pin_sensor_vcc_HIGH    pin_sensor_vcc_PORT   |= (1<<pin_sensor_vcc_bit)
  #endif
  #ifdef pin_laser_gnd_bit
    #define pin_laser_gnd_OUTPUT   pin_laser_gnd_DDR     |= (1<<pin_laser_gnd_bit)
    #define pin_laser_gnd_LOW      pin_laser_gnd_PORT    &=~(1<<pin_laser_gnd_bit)
  #endif
  #ifdef pin_laser_vcc_bit
    #define pin_laser_vcc_OUTPUT   pin_laser_vcc_DDR     |= (1<<pin_laser_vcc_bit)
    #define pin_laser_vcc_HIGH     pin_laser_vcc_PORT    |= (1<<pin_laser_vcc_bit)
  #endif
#endif // power_via_mcu

/*
Frame Rate calculation
*/
#define CLOCK_RATE 24000000L
#define CR_FR (CLOCK_RATE/FRAME_RATE)
#define invCRFR (~CR_FR)
#define FR_VALUE ((uint8_t)(invCRFR >> 8))
#define FR_DELAY ((uint16_t)(1000000L/FRAME_RATE))

