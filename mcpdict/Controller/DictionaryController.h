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
@interface DictionaryController : UIViewController<TextInputDelegate>
@property (strong, nonatomic) IBOutlet UINavigationItem *NavigationItem;
@property (nonatomic,strong) UITableView* tableView;
@property (nonatomic,strong) NSArray* OptionsString;
@property (nonatomic,strong) NSArray* ModeString;
@property (nonatomic,strong) NSString* SearchText;
@property (nonatomic) SEARCH_MODE Mode;


@property BOOL OptionAllowVariants;
@property BOOL OptionKuangxYonghOnly;
@property BOOL OptionToneInsensitive;

@property BOOL OptionAvailableAllowVariants;
@property BOOL OptionAvailableKuangxYonghOnly;
@property BOOL OptionAvailableToneInsensitive;

@end
