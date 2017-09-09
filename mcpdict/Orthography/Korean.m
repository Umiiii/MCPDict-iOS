//
//  Korean.m
//  mcpdict
//
//  Created by Cirno on 2017/9/8.
//  Copyright © 2017年 com.umi.mcpdict. All rights reserved.
//

#import "Korean.h"

@implementation Korean
+(Korean *)sharedInstance{
    static Korean *sharedInstance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc]init];
    });
    return sharedInstance;
}
-(NSString*)display:(NSString*)s
               mode:(KoreanDisplayMode)system{
    return @"韩语读音";
}
@end
