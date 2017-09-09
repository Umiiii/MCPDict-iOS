//
//  SettingManager.h
//  mcpdict
//
//  Created by Cirno on 2017/9/8.
//  Copyright © 2017年 com.umi.mcpdict. All rights reserved.
//

#import <Foundation/Foundation.h>
#define MandarinStr @"mandarin_display"
#define CantoneseStr @"cantonese_romanization"
#define KoreanStr @"korean_display"
#define VietnameseStr @"vietnamese_tone_position"
#define JapaneseStr @"japanese_display"

typedef NS_ENUM(NSUInteger,MandarinDisplayMode){
    MandarinDisplayModePinYin,
    MandarinDisplayModeBoPoMoFo
};

typedef NS_ENUM(NSUInteger,CantoneseDisplayMode){
    CantoneseDisplayModeJyutPing,
    CantoneseDisplayModeCantonesePinYin,
    CantoneseDisplayModeYale,
    CantoneseDisplayModeSidneyLau
};

typedef NS_ENUM(NSUInteger,KoreanDisplayMode){
    KoreanDisplayModeHangul,
    KoreanDisplayModeRomanization,
};

typedef NS_ENUM(NSUInteger,VietnameseDisplayMode){
    VietnameseDisplayModeOldStyle,
    VietnameseDisplayModeNewStyle,

};

typedef NS_ENUM(NSUInteger,JapaneseDisplayMode){
    JapaneseDisplayModeHiragana,
    JapaneseDisplayModeKatakana,
    JapaneseDisplayModeNippon,
    JapaneseDisplayModeHepburn
};

@interface SettingManager : NSObject
+(SettingManager *)sharedInstance;
-(MandarinDisplayMode)getMandarinDisplayMode;
-(CantoneseDisplayMode)getCantoneseDisplayMode;
-(KoreanDisplayMode)getKoreanDisplayMode;
-(VietnameseDisplayMode)getVietnameseDisplayMode;
-(JapaneseDisplayMode)getJapaneseDisplayMode;



@end
