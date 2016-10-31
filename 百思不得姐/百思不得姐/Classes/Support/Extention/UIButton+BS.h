//
//  UIButton+BS.h
//  百思不得姐
//
//  Created by duanApple on 16/10/31.
//  Copyright © 2016年 Wuhan University. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (BS)
//创建导航栏返回按钮
+(UIButton *)backBtnWithTarget:(id)target action:(SEL)action;
@end
