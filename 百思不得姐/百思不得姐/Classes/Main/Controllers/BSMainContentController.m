//
//  BSMainContentController.m
//  百思不得姐
//
//  Created by duanApple on 16/10/30.
//  Copyright © 2016年 Wuhan University. All rights reserved.
//

#import "BSMainContentController.h"
@interface BSMainContentController()

@end
@implementation BSMainContentController
- (void)viewDidLoad {
    [super viewDidLoad];
    //1.设置导航栏
    [self setUpNav];
    //2.添加childrenControllerView
    [self setChildreController];
    //3.设置ScrollView
    [self setScrollView];
    
}
//设置导航栏
-(void)setUpNav
{
    //标题
    self.navigationItem.titleView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"MainTitle"]];
    //左边
//    if(self.navigationItem.leftBarButtonItem == nil)
//    {
//        self.navigationItem.leftBarButtonItem = [UIBarButtonItem initWithImage:[UIImage imageNamed:@"MainTagSubIcon"] hightlightImage:[UIImage imageNamed:@"MainTagSubIconClick"] target:self action:@selector(leftTagClick)];
//        
//    }
//    
//    //右边
//    if(self.navigationItem.rightBarButtonItem == nil)
//    {
//        self.navigationItem.rightBarButtonItem = [UIBarButtonItem initWithImage:[UIImage imageNamed:@"MainTagSubIcon"] hightlightImage:[UIImage imageNamed:@"MainTagSubIconClick"] target:self action:@selector(rightTagClick)];
//        
//    }
}
//添加childrenControllerView
-(void)setChildreController
{
    
    
}
//设置ScrollView
-(void)setScrollView
{
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark -设置数据
#pragma mark -设置方法
//navigation 左边按钮点击事件
-(void)leftTagClick
{
    
}
//navigation 右边按钮点击事件
-(void)rightTagClick
{
    
}

@end
