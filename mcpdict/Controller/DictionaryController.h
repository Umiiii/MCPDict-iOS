//
//  DictionaryController.h
//  mcpdict
//
//  Created by Cirno on 2017/8/30.
//  Copyright © 2017年 com.umi.mcpdict. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UmiHeader.h"
#import "TextInputController.h"
#import "SettingViewController.h"
#import "ResultViewController.h"
#import <Hero/Hero-Swift.h>
@interface DictionaryController : UIViewController<TextInputDelegate>
@property (strong, nonatomic) IBOutlet UINavigationItem *NavigationItem;
@property (nonatomic,strong) UITableView* tableView;
@property (nonatomic,strong) NSArray* optionsString;
@property (nonatomic,strong) NSArray* modeString;
@property (nonatomic,strong) NSString* searchText;
@property (nonatomic) SearchMode searchMode;


@property BOOL optionAllowVariants;
@property BOOL optionKuangxYonghOnly;
@property BOOL optionToneInsensitive;

@property BOOL optionAvailableAllowVariants;
@property BOOL optionAvailableKuangxYonghOnly;
@property BOOL optionAvailableToneInsensitive;

@end
