//
//  SettingViewController.h
//  mcpdict
//
//  Created by Cirno on 2017/8/31.
//  Copyright © 2017年 com.umi.mcpdict. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SettingManager.h"
#import "UmiHeader.h"
#import "AboutViewController.h"
@interface SettingViewController : UITableViewController
@property (nonatomic,strong) NSArray* settings;
@property (nonatomic,strong) NSArray* settingOptions;
@property (nonatomic,strong) NSDictionary* currentSetting;
@end
