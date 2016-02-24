//
//  UIBarButtonItem+CQTExtension.m
//  01-百思不得姐
//
//  Created by Cass on 16/2/17.
//  Copyright © 2016年 Cass. All rights reserved.
//

#import "UIBarButtonItem+CQTExtension.h"

@implementation UIBarButtonItem (CQTExtension)
+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action
{

    //设置导航栏左边按钮
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    button.size = button.currentBackgroundImage.size;
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    
    return [[self alloc]initWithCustomView:button];
}

@end
