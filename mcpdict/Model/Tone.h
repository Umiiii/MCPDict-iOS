//
//  Tone.h
//  mcpdict
//
//  Created by Cirno on 2017/9/8.
//  Copyright © 2017年 com.umi.mcpdict. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UmiHeader.h"
@interface Tone : NSObject
@property (nonatomic,strong) NSString* lang;//语言
@property (nonatomic,strong) NSString* tone;//读音
-(instancetype)initWithLang:(NSString*)lang
                       Tone:(NSString*)tone;
@end
