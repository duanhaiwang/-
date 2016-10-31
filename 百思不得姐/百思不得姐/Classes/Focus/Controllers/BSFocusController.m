//
//  BSFocusController.m
//  百思不得姐
//
//  Created by duanApple on 16/10/26.
//  Copyright © 2016年 Wuhan University. All rights reserved.
//

#import "BSFocusController.h"
#import "UIBarButtonItem+BS.h"
#import "BSFocusRecommendController.h"
#import "BSLoginController.h"
@interface BSFocusController ()

@end

@implementation BSFocusController
#pragma mark -设置控件
- (void)viewDidLoad {
    [super viewDidLoad];
    //设置导航栏
    [self setUpNav];
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    
}
-(void)setUpNav
{
    //标题
    self.navigationItem.title = @"关注";
    //左边
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"friendsRecommentIcon"] hightlightImage:[UIImage imageNamed:@"friendsRecommentIcon-click"] target:self action:@selector(recomment)];
    
}
#pragma mark -设置数据
#pragma mark -设置方法
//弹出推荐界面
-(void)recomment
{
    
    BSFocusRecommendController *recommend = [[BSFocusRecommendController alloc]init];
    [self.navigationController pushViewController:recommend animated:YES];
}

- (IBAction)loginBtnClick {
    BSLoginController *login = [[BSLoginController alloc]init];
    [self presentViewController:login animated:YES completion:nil];
}
#pragma mark -设置代理方法

//navigation 左边按钮点击事件




@end
