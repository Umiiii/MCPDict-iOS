//
//  Tone.m
//  mcpdict
//
//  Created by Cirno on 2017/9/8.
//  Copyright © 2017年 com.umi.mcpdict. All rights reserved.
//

#import "Tone.h"

@implementation Tone
-(instancetype)initWithLang:(NSString*)lang
                       Tone:(NSString*)tone{
    self = [super init];
    if (self){
        self.lang = lang;
        self.tone = tone;
    }
    return self;
}
@end
