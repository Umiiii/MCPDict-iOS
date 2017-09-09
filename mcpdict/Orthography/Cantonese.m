//
//  Cantonese.m
//  mcpdict
//
//  Created by Cirno on 2017/9/8.
//  Copyright © 2017年 com.umi.mcpdict. All rights reserved.
//

#import "Cantonese.h"

@implementation Cantonese
+(Cantonese *)sharedInstance{
    static Cantonese *sharedInstance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc]init];
    });
    return sharedInstance;
}
-(NSString*)display:(NSString*)s
               mode:(CantoneseDisplayMode)system{
    return @"粤语读音";
}
@end
