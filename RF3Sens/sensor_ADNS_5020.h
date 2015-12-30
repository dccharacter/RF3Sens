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
    #define ConstMax
    #define ConstMin
    #define ConstPixMin
    #define ConstPixMax
  Для разных матриц подбирать практическим путем.
*/

#ifndef SENSOR_ADNS_5020_H
#define SENSOR_ADNS_5020_H

#define use_nCS           // имеется ли у сенсора нога nCS

#define ARRAY_WIDTH       15
#define ARRAY_HEIGHT      15

#define Motion            0x02
#define Delta_X           0x03
#define Delta_Y           0x04
#define squal             0x05
#define Shutter_Upper     0x06
#define Shutter_Lower     0x07
#define Maximum_Pixel     0x08
#define Pixel_Sum         0x09
#define Minimum_Pixel     0x0a
#define Pixel_Grab        0x0b
#define Mask_pixel_value  0x7f
#define Pixel_data_valid  0x80
#define delay_tSWW        30
#define delay_tSRAD       4

#define ConstMax          120
#define ConstMin          3
#define ConstPixMin       50
#define ConstPixMax       70

#endif //#ifndef SENSOR_ADNS_5020_H
