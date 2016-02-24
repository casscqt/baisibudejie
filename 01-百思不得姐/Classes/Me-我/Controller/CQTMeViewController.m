//
//  CQTMeViewController.m
//  01-百思不得姐
//
//  Created by Cass on 16/2/16.
//  Copyright © 2016年 Cass. All rights reserved.
//

#import "CQTMeViewController.h"

@interface CQTMeViewController ()

@end

@implementation CQTMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置导航栏内容
    self.navigationItem.title = @"我的";
    //设置导航栏左边按钮
    UIButton *settingButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [settingButton setBackgroundImage:[UIImage imageNamed:@"mine-setting-icon"] forState:UIControlStateNormal];
    [settingButton setBackgroundImage:[UIImage imageNamed:@"mine-setting-icon-click"] forState:UIControlStateHighlighted];
    settingButton.size = settingButton.currentBackgroundImage.size;
    
    UIButton *nightModeButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [nightModeButton setBackgroundImage:[UIImage imageNamed:@"mine-moon-icon"] forState:UIControlStateNormal];
    [nightModeButton setBackgroundImage:[UIImage imageNamed:@"mine-moon-icon-click"] forState:UIControlStateHighlighted];
    nightModeButton.size = settingButton.currentBackgroundImage.size;
    [nightModeButton addTarget:self action:@selector(nightModeclick) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.rightBarButtonItems = @[
                                                [[UIBarButtonItem alloc] initWithCustomView:settingButton],
                                                [[UIBarButtonItem alloc] initWithCustomView:nightModeButton]
                                                ];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)settingClick
{
    CQTLogFunc;
}

- (void)nightModeclick
{
    CQTLogFunc;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
