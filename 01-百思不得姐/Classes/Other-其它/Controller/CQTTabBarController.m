//
//  CQTTabBarController.m
//  01-百思不得姐
//
//  Created by Cass on 16/2/15.
//  Copyright © 2016年 Cass. All rights reserved.
//

#import "CQTTabBarController.h"
#import "CQTEssenceViewController.h"
#import "CQTNewViewController.h"
#import "CQTFriendTrendsViewController.h"
#import "CQTMeViewController.h"
#import "CQTTabBar.h"
#import "CQTNavigationController.h"

@interface CQTTabBarController ()

@end

@implementation CQTTabBarController


+ (void)initialize
{
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    
    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
    selectedAttrs[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [item setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    [self setupChildVc:[[CQTEssenceViewController alloc]init] title:@"精华" image:@"tabBar_essence_icon" selectedImage:@"tabBar_essence_click_icon"];
    
    [self setupChildVc:[[CQTNewViewController alloc]init] title:@"新帖" image:@"tabBar_new_icon" selectedImage:@"tabBar_new_click_icon"];
    
    [self setupChildVc:[[CQTFriendTrendsViewController alloc]init] title:@"关注" image:@"tabBar_friendTrends_icon" selectedImage:@"tabBar_friendTrends_click_icon"];
    
    [self setupChildVc:[[CQTMeViewController alloc]init] title:@"我" image:@"tabBar_me_icon" selectedImage:@"tabBar_me_click_icon"];
    
    
    //更换tabbar
    [self setValue:[[CQTTabBar alloc]init] forKey:@"tabBar"];
    [self.tabBar setBackgroundImage:[UIImage imageNamed:@"tabbar-light"]];
     
}


/**
 *  初始化子控制器
 */
- (void)setupChildVc:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    vc.navigationItem.title = title;
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:image];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
    
    //包装一个导航控制器，添加导航控制器为tabbrcontroller的子控制器
    CQTNavigationController *nav = [[CQTNavigationController alloc] initWithRootViewController:vc];
    [self addChildViewController:nav];
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
