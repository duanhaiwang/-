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
#import "BSTabBar.h"
@interface BSMainTabBarController ()

@end

@implementation BSMainTabBarController


- (void)viewDidLoad {
    [super viewDidLoad];
    //1.设置TabBar属性
    [self setUpTabBarApperence];
    //2.创建子控制器
    [self setUpChildrenControllers];
    //3.设置TabBar
    [self setUpTabBar];

}
#pragma mark -设置控件
//设置TabBar属性
-(void)setUpTabBarApperence
{
    UITabBarItem *tabBarItem = [UITabBarItem appearance];
    //1.普通状态下属性
    NSMutableDictionary *dirNormal = [NSMutableDictionary dictionary];
    dirNormal[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    dirNormal[NSForegroundColorAttributeName] = [UIColor grayColor];
    [tabBarItem setTitleTextAttributes:dirNormal forState:UIControlStateNormal];
    //2.高亮状态下属性
    NSMutableDictionary *dirHigh = [NSMutableDictionary dictionary];
    dirHigh[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    dirHigh[NSForegroundColorAttributeName] = [UIColor redColor];
    [tabBarItem setTitleTextAttributes:dirHigh forState:UIControlStateSelected];



}
//2.创建子控制器
-(void)setUpChildrenControllers
{
    //1.精华控制器
    BSEssenceController *essence = [[BSEssenceController alloc]init];
    essence.view.backgroundColor = [UIColor redColor];
    [self setupViewController:essence title:@"精华" icon:@"tabBar_essence_icon" selectIcon:@"tabBar_essence_click_icon" tag:0];
    //2.新帖控制器
    BSNewController *new = [[BSNewController alloc]init];
    new.view.backgroundColor = [UIColor greenColor];
    [self setupViewController:new title:@"新帖" icon:@"tabBar_new_icon" selectIcon:@"tabBar_new_click_icon" tag:1];
    //3.关注控制器
    BSFocusController *focus = [[BSFocusController alloc]init];
    //focus.view.backgroundColor = [UIColor grayColor];
    [self setupViewController:focus title:@"关注" icon:@"tabBar_friendTrends_icon" selectIcon:@"tabBar_friendTrends_click_icon" tag:2];
    //4.我的控制器
    BSMineController *mine = [[BSMineController alloc]init];
    mine.view.backgroundColor = [UIColor blueColor];
    [self setupViewController:mine title:@"我的" icon:@"tabBar_me_icon" selectIcon:@"tabBar_me_click_icon" tag:3];
}
//创建自控制器方法
-(void)setupViewController:(UIViewController *)cv title:(NSString *)title icon:(NSString *)icon selectIcon:(NSString *)selectIcon tag:(int)tag
{
    BSMainNavigationController *nav = [[BSMainNavigationController alloc]initWithRootViewController:cv];
    nav.title = title;
    nav.tabBarItem.image = [UIImage imageNamed:icon];
    nav.tabBarItem.selectedImage = [UIImage imageNamed:selectIcon];
    nav.tabBarItem.tag = tag;
    [self addChildViewController:nav];
}
//更换TabBar
-(void)setUpTabBar
{
    [self setValue:[[BSTabBar alloc]init] forKey:@"tabBar"];
}


#pragma mark -设置数据
#pragma mark -设置方法
#pragma mark -设置代理方法
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
