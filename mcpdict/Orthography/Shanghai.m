//
//  Shanghai.m
//  mcpdict
//
//  Created by Cirno on 2017/9/8.
//  Copyright © 2017年 com.umi.mcpdict. All rights reserved.
//

#import "Shanghai.h"

@implementation Shanghai
+(Shanghai *)sharedInstance{
    static Shanghai *sharedInstance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc]init];
    });
    return sharedInstance;
}
-(NSString*)display:(NSString*)s{
    return @"上海话读音";
    
}
@end
