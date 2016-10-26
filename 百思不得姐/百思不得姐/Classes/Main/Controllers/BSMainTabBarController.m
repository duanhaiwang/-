//
//  BSMainTabBarController.m
//  百思不得姐
//
//  Created by duanApple on 16/10/26.
//  Copyright © 2016年 Wuhan University. All rights reserved.
//

#import "BSMainTabBarController.h"
#import "BSMainNavigationController.h"
#import "BSEssenceController.h"
#import "BSFocusController.h"
#import "BSNewController.h"
#import "BSMineController.h"
@interface BSMainTabBarController ()

@end

@implementation BSMainTabBarController


- (void)viewDidLoad {
    [super viewDidLoad];
    //1.设置TabBar属性
    [self setUpTabBarApperence];
    //2.创建子控制器
    [self setUpChildrenControllers];
    //3.设置TabBarItem
    [self setUpTabBarItem];

}
#pragma mark -设置控件
//设置TabBar属性
-(void)setUpTabBarApperence
{
    UITabBarItem *tabBarItem = [UITabBarItem appearance];
    //1.普通状态下属性
    NSMutableDictionary *dirNormal = [NSMutableDictionary dictionary];
    dirNormal[NSFontAttributeName] = [UIFont systemFontOfSize:14];
    dirNormal[NSForegroundColorAttributeName] = [UIColor grayColor];
    [tabBarItem setTitleTextAttributes:dirNormal forState:UIControlStateNormal];
    //2.高亮状态下属性
    NSMutableDictionary *dirHigh = [NSMutableDictionary dictionary];
    dirHigh[NSFontAttributeName] = [UIFont systemFontOfSize:14];
    dirHigh[NSForegroundColorAttributeName] = [UIColor redColor];
    [tabBarItem setTitleTextAttributes:dirHigh forState:UIControlStateHighlighted];



}
//2.创建子控制器
-(void)setUpChildrenControllers
{
    //1.精华控制器
    BSEssenceController *essence = [[BSEssenceController alloc]init];
    essence.view.backgroundColor = [UIColor redColor];
    BSMainNavigationController *navEssence = [[BSMainNavigationController alloc]initWithRootViewController:essence];
    [navEssence.view addSubview:essence.view];
    //2.新帖控制器
    BSNewController *new = [[BSNewController alloc]init];
    new.view.backgroundColor = [UIColor greenColor];
    BSMainNavigationController *navNew = [[BSMainNavigationController alloc]initWithRootViewController:new];
    [navNew.view addSubview:new.view];
    //3.关注控制器
    BSFocusController *focus = [[BSFocusController alloc]init];
    focus.view.backgroundColor = [UIColor grayColor];
    BSMainNavigationController *navFocus = [[BSMainNavigationController alloc]initWithRootViewController:focus];
    [navFocus.view addSubview:focus.view];
    //4.我的控制器
    BSEssenceController *mine = [[BSEssenceController alloc]init];
    mine.view.backgroundColor = [UIColor blueColor];
    BSMainNavigationController *navMine = [[BSMainNavigationController alloc]initWithRootViewController:mine];
    [navMine.view addSubview:mine.view];
}
//3.设置TabBarItem
-(void)setUpTabBarItem
{
    UITabBarItem *essence = [[UITabBarItem alloc]init];
//    essence.image = [UIImage imageNamed:]
}

#pragma mark -设置数据
#pragma mark -设置方法
#pragma mark -设置代理方法
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
