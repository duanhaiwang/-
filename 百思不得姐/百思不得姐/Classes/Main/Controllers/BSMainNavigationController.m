//
//  BSMainNavigationController.m
//  百思不得姐
//
//  Created by duanApple on 16/10/26.
//  Copyright © 2016年 Wuhan University. All rights reserved.
//

#import "BSMainNavigationController.h"

@interface BSMainNavigationController ()

@end

@implementation BSMainNavigationController
#pragma mark -设置控件

+(void)initialize
{
    //设置导航栏主题（主题包括背景和文字属性）
    [self setupNavTheme];
    //设置导航栏按钮主题
    [self setupNavButtionItemTheme];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    //设置导航栏主题背景
    [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:UIBarMetricsDefault];
}
//设置导航栏主题（主题包括背景和文字属性）
+(void)setupNavTheme
{
    
    UINavigationBar *navBar = [UINavigationBar appearance];
    NSMutableDictionary *navDic = [NSMutableDictionary dictionary];
    navDic[NSFontAttributeName] = [UIFont systemFontOfSize:20];
//    navDic[NSForegroundColorAttributeName] = [UIColor colorWithPatternImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"]];
    navDic[NSForegroundColorAttributeName] = [UIColor blackColor];

    [navBar setTitleTextAttributes:navDic];
    
}
//设置导航栏按钮主题
+(void)setupNavButtionItemTheme
{
    UIBarButtonItem *item = [UIBarButtonItem appearance];
    //设置正常状态下文字属性
    NSMutableDictionary *dictNormal = [NSMutableDictionary dictionary];
    dictNormal[NSFontAttributeName] = [UIFont systemFontOfSize:14];
    dictNormal[NSForegroundColorAttributeName] = [UIColor blackColor];
    [item setTitleTextAttributes:dictNormal forState:UIControlStateNormal];
    
    
    NSMutableDictionary *dictHighlighted = [NSMutableDictionary dictionary];
    dictHighlighted[NSFontAttributeName] = [UIFont systemFontOfSize:14];
//    dictHighlighted[NSForegroundColorAttributeName] = [UIColor orangeColor];
    [item setTitleTextAttributes:dictHighlighted forState:UIControlStateHighlighted];
}
#pragma mark -设置数据
#pragma mark -设置方法
#pragma mark -设置代理方法

@end
