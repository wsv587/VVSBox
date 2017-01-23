//
//  UIBarButtonItem+AliyunSalesBarButtonItem.m
//  AliyunSales
//
//  Created by wangsong on 16/4/20.
//  Copyright © 2016年 alibaba. All rights reserved.
//

#import "UIBarButtonItem+Extension.h"
//#import "AliyunSalesHomeNavItemButton.h"

@interface UIBarButtonItem ()
@property(nonatomic,weak) UIButton *btn;
@end

@implementation UIBarButtonItem (Extension)

+ (UIBarButtonItem *)itemWithTitle:(NSString *)title target:(id)target action:(SEL)action
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [btn sizeToFit];

    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:btn];
    return item;
}

+ (UIBarButtonItem *)itemWithNormalTitle:(NSString *)normalTitle selectedTitle:(NSString *)selectedTitle target:(id)target action:(SEL)action
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:normalTitle forState:UIControlStateNormal];
    [btn setTitle:selectedTitle forState:UIControlStateSelected];

    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [btn sizeToFit];

    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:btn];
    return item;
}

+ (UIBarButtonItem *)itemWithNormalImageName:(NSString *)normalImageName highLightImageName:(NSString *)highLightImageName target:(id)target action:(SEL)action
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:normalImageName] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:highLightImageName] forState:UIControlStateHighlighted];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [btn sizeToFit];

    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:btn];
    return item;
}


+ (UIBarButtonItem *)itemWithButton:(UIButton *)button target:(id)target action:(SEL)action {
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:button];
    return item;
}

@end
