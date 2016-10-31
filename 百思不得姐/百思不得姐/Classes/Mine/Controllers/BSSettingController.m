//
//  BSSettingController.m
//  百思不得姐
//
//  Created by duanApple on 16/10/31.
//  Copyright © 2016年 Wuhan University. All rights reserved.
//

#import "BSSettingController.h"
@interface BSSettingController ()

@end

@implementation BSSettingController
#pragma mark -设置控件
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    //设置导航栏
    [self setupNav];
}

-(void)setupNav
{
    self.navigationItem.title = @"设置";
}
#pragma mark -设置数据
#pragma mark -设置方法

#pragma mark -设置代理方法
@end
