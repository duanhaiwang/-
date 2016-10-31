//
//  BSNewController.m
//  百思不得姐
//
//  Created by duanApple on 16/10/26.
//  Copyright © 2016年 Wuhan University. All rights reserved.
//

#import "BSNewController.h"
#import "UIBarButtonItem+BS.h"
@interface BSNewController ()

@end

@implementation BSNewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}
//设置导航栏
-(void)setUpNav
{
    [super setUpNav];
    //左边
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"MainTagSubIcon"] hightlightImage:[UIImage imageNamed:@"MainTagSubIconClick"] target:self action:@selector(leftTagClick)];
    //右边
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"MainTagSubIcon"] hightlightImage:[UIImage imageNamed:@"MainTagSubIconClick"] target:self action:@selector(rightTagClick)];
}



@end
