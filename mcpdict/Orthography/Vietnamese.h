//
//  Vietnamese.h
//  mcpdict
//
//  Created by Cirno on 2017/9/8.
//  Copyright © 2017年 com.umi.mcpdict. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SettingManager.h"
@interface Vietnamese : NSObject
+(Vietnamese *)sharedInstance;
-(NSString*)display:(NSString*)s
               mode:(VietnameseDisplayMode)system;
@end
