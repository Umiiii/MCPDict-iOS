//
//  DictionaryController.m
//  mcpdict
//
//  Created by Cirno on 2017/8/30.
//  Copyright © 2017年 com.umi.mcpdict. All rights reserved.
//

#import "DictionaryController.h"

@interface DictionaryController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation DictionaryController


- (void)viewDidLoad {
    [super viewDidLoad];
    UIBarButtonItem* setting = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"Setting"] style:UIBarButtonItemStylePlain target:self action:@selector(Setting)];
    if (@available(iOS 11.0, *)) {
        self.navigationController.navigationBar.prefersLargeTitles = YES;
    }
    self.navigationItem.rightBarButtonItem = setting;
    self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, WIDTH, HEIGHT)
                                                 style:UITableViewStyleGrouped];
    [self.view addSubview:self.tableView];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.OptionsString = [[NSArray alloc]
                          initWithObjects:
                          NSLocalizedString(@"option_kuangx_yonh_only",""),
                          NSLocalizedString(@"option_allow_variants",""),
                          NSLocalizedString(@"option_tone_insensitive", ""), nil];
    self.OptionAvailableAllowVariants = YES;
    self.OptionAvailableKuangxYonghOnly = YES;
    self.OptionAvailableToneInsensitive = YES;
    self.SearchText = @"";
    self.Mode = SEARCH_MODE_HZ;
}

-(void)Setting{
    SettingViewController* setting = [[SettingViewController alloc]init];
    setting.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:setting animated:YES];
}
-(void)ModeSelect{
    UIAlertController *modeSelect = [[UIAlertController alloc]init];
    for (int i = 0 ;i<TOTAL_SEARCH_MODE_NUM;i++){
        NSString* t = [NSString stringWithFormat:@"search_mode[%ld]",(long)i];
        UIAlertAction*mode = [UIAlertAction actionWithTitle:NSLocalizedString(t,"")
                                                      style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
                                                          self.Mode = i;
                                                          [self.tableView reloadData];
        }];

        [modeSelect addAction:mode];
    }
    UIAlertAction*cancel = [UIAlertAction actionWithTitle:UIKitLocalizedString(@"Cancel")
                                                    style:UIAlertActionStyleCancel handler:nil];
    [modeSelect addAction:cancel];
    [self presentViewController:modeSelect animated:YES completion:nil];
}


- (UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    switch (indexPath.section) {
        case 0:
            switch (indexPath.row) {
                case 0:
                {
                    UITableViewCell* cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1
                                                                  reuseIdentifier:@"search"];
                    cell.textLabel.text = @"查询内容";
                    cell.detailTextLabel.text = self.SearchText;
                    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
                    return cell;
                }
                case 1:
                {
                    UITableViewCell* cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1
                                                                  reuseIdentifier:@"mode"];
                    cell.textLabel.text = @"查询模式";
                    NSString* mode = [NSString stringWithFormat:@"search_mode[%ld]",(long)self.Mode];
                    cell.detailTextLabel.text = NSLocalizedString(mode, "");
                    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;

                    return cell;
                }


            }
            break;
        case 1:
        {
            UITableViewCell* cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
            cell.textLabel.text = _OptionsString[indexPath.row];
            UISwitch* sw1tch = [[UISwitch alloc]initWithFrame:CGRectZero];
            cell.accessoryView = sw1tch;
            sw1tch.tag = indexPath.row;
            [sw1tch addTarget:self action:@selector(updateSwitchAtIndexPath:) forControlEvents:UIControlEventTouchUpInside];
            if (sw1tch.tag == 0)
                cell.userInteractionEnabled = self.OptionAvailableKuangxYonghOnly;
            else if (sw1tch.tag == 1)
                cell.userInteractionEnabled = self.OptionAvailableAllowVariants;
            else if (sw1tch.tag == 2)
                cell.userInteractionEnabled = self.OptionAvailableToneInsensitive;
            return cell;
        }

    }
    return nil;
}
-(NSString*) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    switch (section) {
        case 0:
            return @"查询";
            break;
        case 1:
            return @"选项";
        default:
            break;
    }
    return nil;
}
- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 1)
        return 3;
    return 2;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}
-(void)updateSwitchAtIndexPath:(UISwitch*)s{
    if (s.tag==0)
        self.OptionKuangxYonghOnly = s.on;
    else if (s.tag==1)
        self.OptionAllowVariants = s.on;
    else if (s.tag==2)
        self.OptionToneInsensitive = s.on;
}
#pragma UITableView delegate
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.section) {
        case 0:
            switch (indexPath.row) {
                case 0:{
                    TextInputController* text = [[TextInputController alloc]init];
                    text.str = self.SearchText;
                    text.delegate = self;
                    NSString* mode = [NSString stringWithFormat:@"search_mode[%ld]",(long)self.Mode];
                    text.title = NSLocalizedString(mode, "");
                    UINavigationController *navigationController =
                    [[UINavigationController alloc] initWithRootViewController:text];
                    [self presentViewController:navigationController animated:YES completion:nil];
                    break;
                }

                case 1:
                    [self ModeSelect];
                    break;
            }
        case 1:
        {
            UISwitch* sw1tch = (UISwitch*)[self.tableView cellForRowAtIndexPath:indexPath].accessoryView;
            [sw1tch setOn:!sw1tch.on animated:YES];
        }
    }

    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
-(void)textDidChange:(NSString *)str{
    self.SearchText = str;
    [self.tableView reloadData];
}


@end
