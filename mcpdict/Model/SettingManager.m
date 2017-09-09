//
//  SettingManager.m
//  mcpdict
//
//  Created by Cirno on 2017/9/8.
//  Copyright © 2017年 com.umi.mcpdict. All rights reserved.
//

#import "SettingManager.h"



@implementation SettingManager
+(SettingManager *)sharedInstance{
    static SettingManager *sharedInstance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc]init];
    });
    return sharedInstance;
}
-(MandarinDisplayMode)getMandarinDisplayMode{
    return (MandarinDisplayMode)[[NSUserDefaults standardUserDefaults]integerForKey:MandarinStr];
};
-(CantoneseDisplayMode)getCantoneseDisplayMode{
    return (CantoneseDisplayMode)[[NSUserDefaults standardUserDefaults]integerForKey:CantoneseStr];
};
-(KoreanDisplayMode)getKoreanDisplayMode{
    return (KoreanDisplayMode)[[NSUserDefaults standardUserDefaults]integerForKey:KoreanStr];
};
-(VietnameseDisplayMode)getVietnameseDisplayMode{
    return (VietnameseDisplayMode)[[NSUserDefaults standardUserDefaults]integerForKey:VietnameseStr];
};
-(JapaneseDisplayMode)getJapaneseDisplayMode{
    return (JapaneseDisplayMode)[[NSUserDefaults standardUserDefaults]integerForKey:JapaneseStr];

};



@end
