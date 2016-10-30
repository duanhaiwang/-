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
@interface BSFocusController ()

@end

@implementation BSFocusController

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置导航栏
    [self setUpNav];
    
}
-(void)setUpNav
{
    //标题
    self.navigationItem.title = @"关注";
    //左边
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem initWithImage:[UIImage imageNamed:@"friendsRecommentIcon"] hightlightImage:[UIImage imageNamed:@"friendsRecommentIcon-click"] target:self action:@selector(recomment)];
    
}
//navigation 左边按钮点击事件
-(void)recomment
{
    BSFocusRecommendController *recommend = [[BSFocusRecommendController alloc]init];
    recommend.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:recommend animated:YES];
}



@end
