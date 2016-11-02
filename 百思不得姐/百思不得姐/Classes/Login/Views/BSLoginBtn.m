//
//  BSLoginBtn.m
//  百思不得姐
//
//  Created by duanApple on 16/10/31.
//  Copyright © 2016年 Wuhan University. All rights reserved.
//

#import "BSLoginBtn.h"

@implementation BSLoginBtn

-(void)awakeFromNib
{
//    self.titleLabel.textAlignment = NSTextAlignmentCenter;
}
-(void)layoutSubviews
{
    [super layoutSubviews];
    //重新调整按钮内部位置
    CGFloat centerX = self.frame.size.width;
    CGFloat centerY = self.frame.size.height;
    self.imageView.center = CGPointMake(centerX * 0.5, centerY * 0.3);
    self.titleLabel.center = CGPointMake(centerX * 0.5, CGRectGetMaxY(self.imageView.frame) + self.titleLabel.frame.size.height);
   
    
}
@end
