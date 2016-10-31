//
//  BSMainNavigationController.m
//  百思不得姐
//
//  Created by duanApple on 16/10/26.
//  Copyright © 2016年 Wuhan University. All rights reserved.
//

#import "BSMainNavigationController.h"
#import "UIButton+BS.h"
@interface BSMainNavigationController ()<UIGestureRecognizerDelegate>

@end

@implementation BSMainNavigationController
#pragma mark -设置控件

+(void)initialize
{
    //设置导航栏主题（主题包括背景和文字属性）
    [self setupNavTheme];
    //设置导航栏按钮主题
    [self setupNavButtionItemTheme];
    //设置手势返回
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    //设置导航栏主题背景
    [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:UIBarMetricsDefault];
    //设置手势返回
    self.interactivePopGestureRecognizer.delegate = self;
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
    dictNormal[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    dictNormal[NSForegroundColorAttributeName] = [UIColor blackColor];
    [item setTitleTextAttributes:dictNormal forState:UIControlStateNormal];
    
    
    NSMutableDictionary *dictHighlighted = [NSMutableDictionary dictionary];
    dictHighlighted[NSFontAttributeName] = [UIFont systemFontOfSize:12];
//    dictHighlighted[NSForegroundColorAttributeName] = [UIColor orangeColor];
    [item setTitleTextAttributes:dictHighlighted forState:UIControlStateHighlighted];
}
//重写push控制器方法
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.childViewControllers.count>0) {
        //设置nav返回键
        UIButton *backBtn = [UIButton backBtnWithTarget:self action:@selector(back)];
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:backBtn];
        viewController.hidesBottomBarWhenPushed = YES;
    }
   [super pushViewController:viewController animated:animated];
    
    
    
}

#pragma mark -设置数据
#pragma mark -设置方法
//控制器返回事件
-(void)back
{
    [self popViewControllerAnimated:YES];
}
#pragma mark -设置代理方法
//手势代理方法
-(BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    if (self.childViewControllers.count == 1) {
        return NO;
    }
    return YES;
}

@end
