//
//  TextInputController.m
//  mcpdict
//
//  Created by Cirno on 2017/8/31.
//  Copyright © 2017年 com.umi.mcpdict. All rights reserved.
//

#import "TextInputController.h"

@interface TextInputController ()

@end

@implementation TextInputController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, WIDTH, HEIGHT)];
    self.view.backgroundColor = kColor(233, 233, 233);
    self.isHeroEnabled = YES;
    self.Input = [[UITextField alloc]initWithFrame:CGRectMake(0, 100, WIDTH, 44)];
    self.Input.backgroundColor = [UIColor whiteColor];
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 25, 5)];
    self.Input.leftView = view;
    self.Input.leftViewMode = UITextFieldViewModeAlways;
    self.Input.heroID = @"searchText";
    self.Input.font = [UIFont systemFontOfSize:17.0f];
    self.navigationController.navigationBarHidden = NO;
    [self.view addSubview:self.Input];
    if (self.str)
        self.Input.text = self.str;
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:UIKitLocalizedString(@"Done")
                                                                             style:UIBarButtonItemStylePlain target:self action:@selector(Done)];
}

-(void)Done{
    [self.delegate textDidChange:self.Input.text];
    [self.view.window.rootViewController dismissViewControllerAnimated:YES completion:nil];
}


@end
