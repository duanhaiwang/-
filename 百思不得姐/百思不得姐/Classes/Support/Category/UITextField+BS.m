//
//  UITextField+BS.m
//  百思不得姐
//
//  Created by duanApple on 16/11/4.
//  Copyright © 2016年 Wuhan University. All rights reserved.
//

#import "UITextField+BS.h"

@implementation UITextField (BS)
-(void)setPlaceholderColor:(UIColor *)placeholderColor
{
    //设置文字，防止文字为空
    NSString *oldPlaceholder = self.placeholder;
    self.placeholder = @" ";
    self.placeholder = oldPlaceholder;
    
    //设置颜色，防止颜色为空
    if (placeholderColor == nil) {
        placeholderColor = [UIColor colorWithRed:0 green:0 blue:0.0980392 alpha:0.22];
    }
    //设置颜色
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    dic[NSForegroundColorAttributeName] = placeholderColor;
    NSAttributedString *placeholder = [[NSAttributedString alloc]initWithString:self.placeholder attributes:dic];
    self.attributedPlaceholder = placeholder;
}
-(UIColor *)placeholderColor
{
    return [self valueForKeyPath:@"placeholderLabel.textColor"];
}
@end
