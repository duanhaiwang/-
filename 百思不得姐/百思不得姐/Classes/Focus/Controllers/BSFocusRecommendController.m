//
//  BSFocusRecommendController.m
//  百思不得姐
//
//  Created by duanApple on 16/10/30.
//  Copyright © 2016年 Wuhan University. All rights reserved.
//

#import "BSFocusRecommendController.h"

@implementation BSFocusRecommendController

-(void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    //设置导航栏
    [self setupNav];
    
}
//设置导航栏
-(void)setupNav
{
    self.navigationItem.title = @"推荐关注";
    //创建返回按钮
    UIButton *backBtn = [[UIButton alloc]init];
    backBtn.imageEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 0);
    [backBtn setTitle:@"返回" forState:UIControlStateNormal];
    [backBtn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [backBtn setImage:[UIImage imageNamed:@"navigationButtonReturn"] forState:UIControlStateNormal];
    [backBtn setImage:[UIImage imageNamed:@"navigationButtonReturnClick"] forState:UIControlStateHighlighted];
    [backBtn sizeToFit];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:backBtn];
}

@end
