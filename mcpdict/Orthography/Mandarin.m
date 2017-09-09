//
//  Mandarin.m
//  mcpdict
//
//  Created by Cirno on 2017/9/8.
//  Copyright © 2017年 com.umi.mcpdict. All rights reserved.
//

#import "Mandarin.h"

@implementation Mandarin

+(Mandarin *)sharedInstance{
    static Mandarin *sharedInstance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc]init];
    });
    return sharedInstance;
}
-(NSString*)display:(NSString*)s
               mode:(MandarinDisplayMode)system{
    return @"普通话读音";
}

@end
