//
//  UIBarButtonItem+BS.m
//  百思不得姐
//
//  Created by duanApple on 16/10/28.
//  Copyright © 2016年 Wuhan University. All rights reserved.
//

#import "UIBarButtonItem+BS.h"

@implementation UIBarButtonItem (BS)
//初始化UINavigationItem
+(UIBarButtonItem *)initWithImage:(UIImage *)image hightlightImage:(UIImage *)highlightImage target:(id)target action:(SEL)action
{
    UIButton *btn = [[UIButton alloc]init];
    [btn setImage:image forState:UIControlStateNormal];
    [btn setImage:highlightImage forState:UIControlStateHighlighted];
    [btn sizeToFit];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[self alloc]initWithCustomView:btn];
}
@end
