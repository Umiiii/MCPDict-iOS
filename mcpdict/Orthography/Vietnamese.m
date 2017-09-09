//
//  Vietnamese.m
//  mcpdict
//
//  Created by Cirno on 2017/9/8.
//  Copyright © 2017年 com.umi.mcpdict. All rights reserved.
//

#import "Vietnamese.h"

@implementation Vietnamese
+(Vietnamese *)sharedInstance{
    static Vietnamese *sharedInstance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc]init];
    });
    return sharedInstance;
}
-(NSString*)display:(NSString*)s
               mode:(VietnameseDisplayMode)system{
    return @"越南语读音";
}


@end
