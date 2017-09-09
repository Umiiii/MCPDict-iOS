//
//  UmiHeader.h
//  mcpdict
//
//  Created by Cirno on 2017/8/31.
//  Copyright © 2017年 com.umi.mcpdict. All rights reserved.
//

#define WIDTH   [UIScreen mainScreen].bounds.size.width
#define HEIGHT [UIScreen mainScreen].bounds.size.height
#define kColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
#define kColorA(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(r)/255.0 blue:(r)/255.0 alpha:a]

typedef NS_ENUM (NSUInteger,SearchMode){
    SearchModeHZ = 0,
    SearchModeMC = 1,
    SearchModePU = 2,
    SearchModeCT = 3,
    SearchModeSH = 4,
    SearchModeMN = 5,
    SearchModeKR = 6,
    SearchModeVN = 7,
    SearchModeJP_GO = 8,
    SearchModeJP_KAN = 9,
    SearchModeJP_ANY = 10
} ;
typedef NS_ENUM(NSUInteger,ModeMask){
    ModeMaskHZ = 1 << 0,
    ModeMaskUnicode = 1 << 1,
    ModeMaskMC = 1 << 2,
    ModeMaskPU = 1 << 3,
    ModeMaskCT = 1 << 4,
    ModeMaskSH = 1 << 5,
    ModeMaskMN = 1 << 6,
    ModeMaskKR = 1 << 7,
    ModeMaskVN = 1 << 8,
    ModeMaskJP_GO = 1 << 9,
    ModeMaskJP_KAN = 1 << 10,
    ModeMaskJP_TOU = 1 << 11,
    ModeMaskJP_KWAN = 1 << 12,
    ModeMaskJP_OTHER = 1 << 13,
    ModeMaskJP_ALL = ModeMaskJP_GO |
                    ModeMaskJP_KAN |
                    ModeMaskJP_TOU |
                   ModeMaskJP_KWAN |
                   ModeMaskJP_OTHER,
    ModeMaskALL_READINGS   = ModeMaskMC |
                             ModeMaskPU |
                             ModeMaskCT |
                             ModeMaskKR |
                             ModeMaskVN |
                             ModeMaskJP_ALL,
    ModeMaskFavorite = 1 << 14

} ;


#define TOTAL_SEARCH_MODE_NUM 11
#define UIKitLocalizedString(key) [[NSBundle bundleWithIdentifier:@"com.apple.UIKit"] localizedStringForKey:key value:@"" table:nil]
#define L(fmt, ...) NSLog((@"[文件名:%s]\n" "[函数名:%s]\n" "[行号:%d] \n" fmt), __FILE__, __FUNCTION__, __LINE__, ##__VA_ARGS__);
