//
//  BSMineController.m
//  百思不得姐
//
//  Created by duanApple on 16/10/26.
//  Copyright © 2016年 Wuhan University. All rights reserved.
//

#import "BSMineController.h"
#import "UIBarButtonItem+BS.h"
@interface BSMineController ()

@end

@implementation BSMineController
#pragma mark -设置控件
- (void)viewDidLoad {
    [super viewDidLoad];
    //1.设置导航栏
    [self setUpNav];
}
-(void)setUpNav
{
    //标题
    self.navigationItem.title = @"我的";
    //右边
    UIBarButtonItem *setting = [UIBarButtonItem initWithImage:[UIImage imageNamed:@"mine-setting-icon"] hightlightImage:[UIImage imageNamed:@"mine-setting-icon-click"] target:self action:@selector(setting)];
    UIBarButtonItem *moon = [UIBarButtonItem initWithImage:[UIImage imageNamed:@"mine-moon-icon"] hightlightImage:[UIImage imageNamed:@"mine-moon-icon-click"] target:self action:@selector(moon)];
    self.navigationItem.rightBarButtonItems = @[setting, moon];
        
    
  
}

#pragma mark -设置数据
#pragma mark -设置方法
-(void)setting
{
    
}
-(void)moon
{
    
}
#pragma mark -设置代理方法

@end
