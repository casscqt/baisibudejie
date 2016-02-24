//
//  UIBarButtonItem+CQTExtension.h
//  01-百思不得姐
//
//  Created by Cass on 16/2/17.
//  Copyright © 2016年 Cass. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (CQTExtension)
+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action;
@end
