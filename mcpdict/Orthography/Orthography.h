//
//  Orthography.h
//  mcpdict
//
//  Created by Cirno on 2017/9/3.
//  Copyright © 2017年 com.umi.mcpdict. All rights reserved.
//
//  因为 Objective-C 不支持 namespace ，所以只能用单例模式写。
//  Objective-C doesn't support namespace , so we use singleton mode.

#import <Foundation/Foundation.h>
#import "Mandarin.h"
#import "Cantonese.h"
#import "Minnan.h"
#import "Shanghai.h"
#import "Hanzi.h"
#import "MiddleChinese.h"
#import "Korean.h"
#import "Vietnamese.h"
#import "Japanese.h"
#import "Tone.h"
#import "SettingManager.h"
@interface Orthography : NSObject
@property (nonatomic,strong) Mandarin* mandarin;
@property (nonatomic,strong) Cantonese* cantonese;
@property (nonatomic,strong) Minnan* minnan;
@property (nonatomic,strong) Shanghai* shanghai;
@property (nonatomic,strong) Hanzi* hanzi;
@property (nonatomic,strong) MiddleChinese* middleChinese;
@property (nonatomic,strong) Korean* korean;
@property (nonatomic,strong) Vietnamese* vietnamese;
@property (nonatomic,strong) Japanese* japanese;
@property (nonatomic,strong) NSArray<Tone*>* tones;
@property (nonatomic,strong) NSString* chr; //该字

@property BOOL initialized;

@end
