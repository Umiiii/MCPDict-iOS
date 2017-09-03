//
//  AboutViewController.h
//  mcpdict
//
//  Created by Cirno on 2017/9/3.
//  Copyright © 2017年 com.umi.mcpdict. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UmiHeader.h"
@interface AboutViewController : UIViewController
@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) NSArray* pods;
@property (nonatomic,strong) NSArray* podsLink;
@end
