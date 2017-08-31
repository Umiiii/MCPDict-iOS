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

typedef NS_ENUM (NSUInteger,SEARCH_MODE){
    SEARCH_MODE_HZ = 0,
    SEARCH_MODE_MC = 1,
    SEARCH_MODE_PU = 2,
    SEARCH_MODE_CT = 3,
    SEARCH_MODE_SH = 4,
    SEARCH_MODE_MN = 5,
    SEARCH_MODE_KR = 6,
    SEARCH_MODE_VN = 7,
    SEARCH_MODE_JP_GO = 8,
    SEARCH_MODE_JP_KAN = 9,
    SEARCH_MODE_JP_ANY = 10
} ;
#define TOTAL_SEARCH_MODE_NUM 11
#define UIKitLocalizedString(key) [[NSBundle bundleWithIdentifier:@"com.apple.UIKit"] localizedStringForKey:key value:@"" table:nil]
