//
//  CQTNavigationController.m
//  01-百思不得姐
//
//  Created by Cass on 16/2/19.
//  Copyright © 2016年 Cass. All rights reserved.
//

#import "CQTNavigationController.h"

@implementation CQTNavigationController


+ (void)initialize
{
//    UINavigationBar *bar = [UINavigationBar appearanceWhenContainedIn:[self class],nil];
    UINavigationBar *bar = [UINavigationBar appearance];
    [bar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:UIBarMetricsDefault];

}


- (void)viewDidLoad{
    
    [super viewDidLoad];
    
//    [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:UIBarMetricsDefault];
    
    CQTLogFunc;
}


- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    
    if (self.childViewControllers.count > 0){
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setTitle:@"返回" forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:@"navigationButtonReturn"] forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:@"navigationButtonReturnClick"] forState:UIControlStateHighlighted];

        button.size = CGSizeMake(70, 30);
        button.contentEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 0);
        button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
        [button addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:button];
        
        viewController.hidesBottomBarWhenPushed = YES;
    }
    
    //这句super 具有扩展性
    [super pushViewController:viewController animated:animated];

}


- (void)back
{
    [self popViewControllerAnimated:YES];
}


@end
