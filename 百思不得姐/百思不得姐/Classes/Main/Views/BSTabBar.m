//
//  BSTabBar.m
//  百思不得姐
//
//  Created by duanApple on 16/10/27.
//  Copyright © 2016年 Wuhan University. All rights reserved.
//

#import "BSTabBar.h"
@interface BSTabBar()
@property (nonatomic, weak) UIButton *pulishBtn;
@end
@implementation BSTabBar
#pragma mark -设置控件
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundImage = [UIImage imageNamed:@"tabbar-light"];
    }
    return self;
}
-(UIButton *)pulishBtn
{
    if (_pulishBtn == nil) {
        UIButton *btn = [[UIButton alloc]init];
        [btn setImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateSelected];
        [self addSubview:btn];
        _pulishBtn = btn;
        
    }
    return _pulishBtn;
}
-(void)layoutSubviews
{
    [super layoutSubviews];
    NSMutableArray *items = [NSMutableArray array];
    for (UIView *item in self.subviews) {
        if ([item isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            [items addObject:item];
        }
    }
 
    CGFloat tabBarW = self.bounds.size.width;
    CGFloat tabBarH = self.bounds.size.height;
    //确定发送按钮的位置
    self.pulishBtn.layer.anchorPoint = CGPointMake(0.5, 0.5);
    self.pulishBtn.layer.position = CGPointMake(tabBarW * 0.5, tabBarH * 0.5);
    self.pulishBtn.bounds = CGRectMake(tabBarW * 0.5, tabBarH * 0.5, tabBarH, tabBarH);
    //确定TabBarItem位置
    CGFloat itemW = (tabBarW - tabBarH)/4;
    CGFloat itemH = tabBarH;
    for (int i = 0; i<items.count; i++) {
        UIView *item = items[i];
        if (i<2) {
            item.frame = CGRectMake(i * itemW, 0, itemW, itemH);
        }else
        {
            item.frame = CGRectMake(CGRectGetMaxX(self.pulishBtn.frame) + (i - 2) * itemW, 0, itemW, itemH);
        }
    }
    
    
}
#pragma mark -设置数据
#pragma mark -设置方法
#pragma mark -设置代理方法
@end
