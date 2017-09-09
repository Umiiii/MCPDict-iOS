//
//  Japanese.m
//  mcpdict
//
//  Created by Cirno on 2017/9/8.
//  Copyright © 2017年 com.umi.mcpdict. All rights reserved.
//

#import "Japanese.h"

@implementation Japanese
+(Japanese *)sharedInstance{
    static Japanese *sharedInstance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc]init];
    });
    return sharedInstance;
}
-(NSString*)display:(NSString*)s
               mode:(JapaneseDisplayMode)system{
    return @"日语读音";
}

@end
