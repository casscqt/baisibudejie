//
//  CQTEssenceViewController.m
//  01-百思不得姐
//
//  Created by Cass on 16/2/16.
//  Copyright © 2016年 Cass. All rights reserved.
//

#import "CQTEssenceViewController.h"

@interface CQTEssenceViewController ()

@end

@implementation CQTEssenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //设置导航栏内容
    self.navigationItem.titleView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"MainTitle"]];
    //设置导航栏左边按钮
    UIButton *tabButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [tabButton setBackgroundImage:[UIImage imageNamed:@"MainTagSubIcon"] forState:UIControlStateNormal];
    [tabButton setBackgroundImage:[UIImage imageNamed:@"MainTagSubIconClick"] forState:UIControlStateHighlighted];
    tabButton.size = tabButton.currentBackgroundImage.size;
    [tabButton addTarget:self action:@selector(tagClick) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:tabButton];
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"friendsRecommentIcon" highImage:@"friendsRecommentIcon-click" target:self action:@selector(tagClick)];
    //设置背景色
    self.view.backgroundColor = CQTGlobalBg;
    
}

- (void)tagClick
{
    CQTLogFunc;
    UIViewController *view = [[UIViewController alloc]init];
    view.view.backgroundColor = [UIColor redColor];
    [self.navigationController pushViewController:view animated:YES];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
