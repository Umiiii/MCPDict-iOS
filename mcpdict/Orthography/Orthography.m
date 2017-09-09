//
//  Orthography.m
//  mcpdict
//
//  Created by Cirno on 2017/9/3.
//  Copyright © 2017年 com.umi.mcpdict. All rights reserved.
//

#import "Orthography.h"

@implementation Orthography
-(void)initialize{
    if (self.initialized) return;
    self.mandarin         = [Mandarin sharedInstance];
    self.cantonese        = [Cantonese sharedInstance];
    self.hanzi            = [Hanzi sharedInstance];
    self.minnan           = [Minnan sharedInstance];
    self.shanghai         = [Shanghai sharedInstance];
    self.middleChinese    = [MiddleChinese sharedInstance];
    self.vietnamese       = [Vietnamese sharedInstance];
    self.japanese         = [Japanese sharedInstance];
    self.korean           = [Korean sharedInstance];
    self.initialized      = YES;
}

-(void)queryWithChar:(NSString*)chr{
    if (self.tones) return;
    self.chr = chr;
    SettingManager *manager = [SettingManager sharedInstance];
    MandarinDisplayMode mandarinDisplayMode = [manager getMandarinDisplayMode];
    VietnameseDisplayMode vietnameseDisplayMode = [manager getVietnameseDisplayMode];
    CantoneseDisplayMode cantoneseDisplayMode = [manager getCantoneseDisplayMode];
    KoreanDisplayMode koreanDisplayMode = [manager getKoreanDisplayMode];
    JapaneseDisplayMode japaneseDisplayMode = [manager getJapaneseDisplayMode];
    NSString* mandarinDisplayStr = [self.mandarin display:self.chr
                                                      mode:mandarinDisplayMode];
    NSString* cantoneseDisplayStr = [self.cantonese display:self.chr
                                                       mode:cantoneseDisplayMode];
    NSString* minnanDisplayStr = [self.minnan display:self.chr];
    NSString* shanghaiDisplayStr = [self.shanghai display:self.chr];
    NSString* middleChineseDisplayStr = [self.middleChinese display:self.chr];
    NSString* vietnameseDisplayStr = [self.vietnamese display:self.chr
                                                         mode:vietnameseDisplayMode];
    NSString* japaneseDisplayStr = [self.japanese display:self.chr
                                                     mode:japaneseDisplayMode];
    NSString* koreanDisplayStr = [self.korean display:self.chr
                                                 mode:koreanDisplayMode];
    self.tones = [[NSArray alloc]initWithObjects:mandarinDisplayStr,
                                                 cantoneseDisplayStr,
                                                 minnanDisplayStr,
                                                 shanghaiDisplayStr,
                                                 middleChineseDisplayStr,
                                                 vietnameseDisplayStr,
                                                 japaneseDisplayStr,
                                                 koreanDisplayStr,
                                                 nil];
}



@end
