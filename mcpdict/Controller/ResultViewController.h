//
//  ResultViewController.h
//  mcpdict
//
//  Created by Cirno on 2017/8/31.
//  Copyright © 2017年 com.umi.mcpdict. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <DZNEmptyDataSet/UIScrollView+EmptyDataSet.h>
#import <Hero/Hero-Swift.h>
#import "ResultCell.h"
#import "UmiHeader.h"
#import "Orthography.h"

@interface ResultViewController : UITableViewController
@property (nonatomic,strong) NSArray<Orthography*>* result;



@end
