//
//  Hanzi.h
//  mcpdict
//
//  Created by Cirno on 2017/9/3.
//  Copyright © 2017年 com.umi.mcpdict. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Hanzi : NSObject
-(BOOL)isHanzi:(NSString*)c;
-(NSString*)getVariants:(NSString*)c;
+(Hanzi *)sharedInstance;

@end
