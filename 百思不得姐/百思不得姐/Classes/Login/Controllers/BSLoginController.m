//
//  BSLoginController.m
//  百思不得姐
//
//  Created by duanApple on 16/10/31.
//  Copyright © 2016年 Wuhan University. All rights reserved.
//

#import "BSLoginController.h"

@interface BSLoginController ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leftMargin;
@end

@implementation BSLoginController
#pragma mark -设置控件
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
   
}

#pragma mark -设置数据
#pragma mark -设置事件方法
//返回键点击事件
- (IBAction)back {
    [self dismissViewControllerAnimated:YES completion:nil];
}
//状态栏变为白色
-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}
//注册按钮点击事件
- (IBAction)RegisteredAccount:(UIButton *)btn {
    //1.推出键盘
    [self.view endEditing:YES];
    //2.根据当前的状态判断点击事件
    if (self.leftMargin.constant == 0) {//表明为登录界面
        self.leftMargin.constant = -self.view.frame.size.width;
        btn.selected = YES;
    }else//表明为注册界面
    {
        self.leftMargin.constant = 0;
        btn.selected = NO;
    }
    //3.动画显示
//    [UIView animateWithDuration:0.2 animations:^{
//        [self.view layoutIfNeeded];
//    }];
}

#pragma mark -设置代理方法

@end
