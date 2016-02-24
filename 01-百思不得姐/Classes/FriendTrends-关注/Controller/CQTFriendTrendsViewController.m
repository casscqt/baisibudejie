//
//  CQFfriendTrendsViewController.m
//  01-百思不得姐
//
//  Created by Cass on 16/2/16.
//  Copyright © 2016年 Cass. All rights reserved.
//

#import "CQTFriendTrendsViewController.h"
#import "CQTRecommendViewController.h"

@interface CQTFriendTrendsViewController ()

@end

@implementation CQTFriendTrendsViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //设置导航栏标题
    self.navigationItem.title = @"我的关注";
    
    //设置导航栏左边的按钮
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"friendsRecommentIcon" highImage:@"friendsRecommentIcon-click" target:self action:@selector(friendsClick)];

    
}


- (void)friendsClick
{
    CQTRecommendViewController *recommendVc = [[CQTRecommendViewController alloc]init];
    [self.navigationController pushViewController:recommendVc animated:YES];
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
