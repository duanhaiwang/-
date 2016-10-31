//
//  UIButton+BS.m
//  百思不得姐
//
//  Created by duanApple on 16/10/31.
//  Copyright © 2016年 Wuhan University. All rights reserved.
//

#import "UIButton+BS.h"

@implementation UIButton (BS)
+(UIButton *)backBtnWithTarget:(id)target action:(SEL)action
{
    UIButton *backBtn = [[UIButton alloc]init];
    backBtn.contentEdgeInsets = UIEdgeInsetsMake(0, -20, 0, 0);
    [backBtn setTitle:@"返回" forState:UIControlStateNormal];
    [backBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [backBtn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [backBtn setImage:[UIImage imageNamed:@"navigationButtonReturn"] forState:UIControlStateNormal];
    [backBtn setImage:[UIImage imageNamed:@"navigationButtonReturnClick"] forState:UIControlStateHighlighted];
    [backBtn sizeToFit];
    [backBtn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return backBtn;
}
@end
