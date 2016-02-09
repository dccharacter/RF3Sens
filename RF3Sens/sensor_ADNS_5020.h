//###########################################################################################
// RF3Sens (RoboForum triangulation range sensor)
// http://roboforum.ru/forum107/topic15929.html (official language for this forum - russian)
// MIT License
// 2015-2016
// Дмитрий Лилик (aka Dmitry__ @ RoboForum.ru)
// Андрей Пожогин (aka dccharacter  @ RoboForum.ru)
// Сергей Тараненко (aka setar @ RoboForum.ru)
//###########################################################################################

/* sensor_ADNS_5020.h

  Для работы алгоритма определения порога датчика важны:
    #define ADNS_CONST_MAX
    #define ADNS_CONST_MIN
    #define ADNS_CONST_PIX_MIN
    #define ADNS_CONST_PIX_MAX
  Для разных матриц подбирать практическим путем.
*/

#ifndef SENSOR_ADNS_5020_H
#define SENSOR_ADNS_5020_H

#define use_NCS           // имеется ли у сенсора нога NCS

#define ARRAY_WIDTH       15
#define ARRAY_HEIGHT      15

#define ADNS_MOTION            0x02
#define ADNS_DELTA_X           0x03
#define ADNS_DELTA_Y           0x04
#define ADNS_SQUAL             0x05
#define ADNS_SHUTTER_UPPER     0x06
#define ADNS_SHUTTER_LOWER     0x07
#define ADNS_MAX_PIX     0x08
#define ADNS_PIX_SUM         0x09
#define ADNS_MIN_PIX     0x0a
#define ADNS_PIX_GRAB        0x0b
#define ADNS_MASK_PIX  0x7f
#define ADNS_PIX_DATA_VALID  0x80
#define ADNS_DELAY_TSWW        30
#define ADNS_DELAY_TSRAD       4

#define ADNS_CONST_MAX          120
#define ADNS_CONST_MIN          3
#define ADNS_CONST_PIX_MIN       50
#define ADNS_CONST_PIX_MAX       70

#endif //#ifndef SENSOR_ADNS_5020_H
