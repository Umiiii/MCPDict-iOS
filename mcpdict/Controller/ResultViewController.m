//
//  ResultViewController.m
//  mcpdict
//
//  Created by Cirno on 2017/8/31.
//  Copyright © 2017年 com.umi.mcpdict. All rights reserved.
//

#import "ResultViewController.h"

@interface ResultViewController ()<DZNEmptyDataSetSource,DZNEmptyDataSetDelegate>

@end

@implementation ResultViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, WIDTH, HEIGHT)
                                                 style:UITableViewStylePlain];
  
    self.tableView.emptyDataSetSource = self;
    self.tableView.emptyDataSetDelegate = self;
    
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    ResultCell* cell = [tableView cellForRowAtIndexPath:indexPath];
    NSLog(@"cell = %@",cell);
    if (cell == nil)
        return 90;
    else{
        NSLog(@"%lf",[cell allSizeHeight].height);
        return [cell allSizeHeight].height;
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ResultCell* cell = [tableView dequeueReusableCellWithIdentifier:@"resultcell"];
    if (cell == nil)
        cell = [[[NSBundle  mainBundle] loadNibNamed:@"ResultCell"
                                               owner:self options:nil]  lastObject];

    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


#pragma mark - DZNEmptyDataSetSource

- (NSAttributedString *)titleForEmptyDataSet:(UIScrollView *)scrollView {
    NSString *text = NSLocalizedString(@"result_empty", "");
    return [[NSAttributedString alloc] initWithString:text attributes:nil];
}

- (NSAttributedString *)descriptionForEmptyDataSet:(UIScrollView *)scrollView {
    NSString *text = NSLocalizedString(@"result_empty_detail", "");
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:text attributes:nil];

    return attributedString;
}



@end
