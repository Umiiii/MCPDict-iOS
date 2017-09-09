//
//  Minnan.h
//  mcpdict
//
//  Created by Cirno on 2017/9/8.
//  Copyright © 2017年 com.umi.mcpdict. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Minnan : NSObject
+(Minnan *)sharedInstance;
-(NSString*)display:(NSString*)s;
@end
