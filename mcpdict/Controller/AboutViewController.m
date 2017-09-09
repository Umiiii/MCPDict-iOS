//
//  AboutViewController.m
//  mcpdict
//
//  Created by Cirno on 2017/9/3.
//  Copyright © 2017年 com.umi.mcpdict. All rights reserved.
//

#import "AboutViewController.h"
#import <SafariServices/SafariServices.h>
@interface AboutViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation AboutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"about", "");
    UILabel* title = [[UILabel alloc]initWithFrame:CGRectMake(0, 20, WIDTH, 50)];
    UIView* header = [[UIView alloc]initWithFrame:CGRectMake(0, 0, WIDTH, 100)];

    UILabel* subTitle = [[UILabel alloc]initWithFrame:CGRectMake(0, 50, WIDTH, 100)];
    subTitle.font = [UIFont systemFontOfSize:15 weight:UIFontWeightUltraLight];
    subTitle.text = [NSString stringWithFormat:@"Version %@ © 2017 by Umiii",
                     [[[NSBundle mainBundle] infoDictionary]objectForKey:@"CFBundleShortVersionString"]];
    subTitle.textAlignment = NSTextAlignmentCenter;
    title.textAlignment = NSTextAlignmentCenter;
    title.text = [[[NSBundle mainBundle] localizedInfoDictionary]
                  objectForKey:@"CFBundleDisplayName"];
    title.font = [UIFont systemFontOfSize:45 weight:UIFontWeightUltraLight];
    [header addSubview:title];
    [header addSubview:subTitle];
    self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, WIDTH, HEIGHT) style:UITableViewStyleGrouped];
    [self.view addSubview:self.tableView];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.tableHeaderView = header;
    self.pods = [[NSArray alloc]initWithObjects:
                 @"DZNEmptyDataSet",
                 @"FMDB",
                 @"Hero",
                 @"MCPDict",
                 nil];
    self.podsLink = [[NSArray alloc]initWithObjects:
                     @"https://github.com/dzenbot/DZNEmptyDataSet",
                     @"https://github.com/ccgus/fmdb",
                     @"https://github.com/lkzhao/Hero",
                     @"https://github.com/MaigoAkisame/MCPDict",
                     nil];
    
}




- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell* cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
    if (indexPath.section == 0)
        cell.textLabel.text = NSLocalizedString(@"github", "");
    else
        cell.textLabel.text = self.pods[indexPath.row];
    return cell;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}


- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section==1)
        return [self.pods count];
    return 1;
}

-(NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if (section == 0){
        return NSLocalizedString(@"github", "");
    }
    return NSLocalizedString(@"about_used_library", "comment");
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
     [tableView deselectRowAtIndexPath:indexPath animated:YES];
    NSString* url;
    if (indexPath.section == 0)
        url = @"https://github.com/Umiiii/MCPDict-iOS";
    else
        url = self.podsLink[indexPath.row];
    SFSafariViewController* safari = [[SFSafariViewController alloc]initWithURL:
                                      [[NSURL alloc]initWithString:url]];
    [self.navigationController presentViewController:safari animated:YES completion:nil];
}

@end
