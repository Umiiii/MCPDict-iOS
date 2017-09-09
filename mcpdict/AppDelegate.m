//
//  AppDelegate.m
//  mcpdict
//
//  Created by Cirno on 2017/8/30.
//  Copyright © 2017年 com.umi.mcpdict. All rights reserved.
//

#import "AppDelegate.h"
#if DEBUG
#import "FLEXManager.h"
#endif
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window.backgroundColor = [UIColor whiteColor];
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    BOOL firstLoad = [userDefaults boolForKey:@"firstLoad"];

    if (!firstLoad){
        [userDefaults setBool:YES forKey:@"firstLoad"];
        [userDefaults setInteger:0 forKey:@"mandarin_display"];
        [userDefaults setInteger:0 forKey:@"cantonese_romanization"];
        [userDefaults setInteger:0 forKey:@"korean_display"];
        [userDefaults setInteger:0 forKey:@"vietnamese_tone_position"];
        [userDefaults setInteger:0 forKey:@"japanese_display"];
    }
    return YES;
}



@end
