//
//  Hanzi.m
//  mcpdict
//
//  Created by Cirno on 2017/9/3.
//  Copyright © 2017年 com.umi.mcpdict. All rights reserved.
//

#import "Hanzi.h"
static uint32_t FIRST_HANZI_UNICODE = 0x4E00;
static uint32_t LAST_HANZI_UNICODE = 0x9FA5;
static NSString* FIRST_HANZI;
static NSString* LAST_HANZI;
static NSArray<NSString*>* variants;
@implementation Hanzi

+(Hanzi *)sharedInstance{
    static Hanzi *sharedInstance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc]init];
    });
    return sharedInstance;
}

+(void)initialize{
    FIRST_HANZI = [[NSString alloc]initWithBytes:&FIRST_HANZI_UNICODE
                                          length:4
                                        encoding:NSUTF32LittleEndianStringEncoding];
    LAST_HANZI = [[NSString alloc]initWithBytes:&LAST_HANZI_UNICODE
                                         length:4
                                       encoding:NSUTF32LittleEndianStringEncoding];
    NSMutableArray<NSString*> *v = [[NSMutableArray alloc]init];
    for (uint32_t unicode=FIRST_HANZI_UNICODE;
         unicode<=LAST_HANZI_UNICODE;
         unicode++)
        [v addObject:[[NSString alloc]initWithBytes:&unicode
                                             length:4
                                           encoding:NSUTF32LittleEndianStringEncoding]];
    variants = [v copy];
}

-(BOOL)isHanzi:(NSString*)c{
    return ([c characterAtIndex:0]>=FIRST_HANZI_UNICODE)&&
            ([c characterAtIndex:0]<=LAST_HANZI_UNICODE);
}

-(NSString*)getVariants:(NSString*)c{
    //TODO
    return [[NSString alloc]init];
}
@end
