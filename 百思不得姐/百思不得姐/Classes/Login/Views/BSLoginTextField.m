//
//  BSLoginTextField.m
//  百思不得姐
//
//  Created by duanApple on 16/11/4.
//  Copyright © 2016年 Wuhan University. All rights reserved.
//

#import "BSLoginTextField.h"
#import "UITextField+BS.h"

@implementation BSLoginTextField
#pragma mark -设置控件
-(void)awakeFromNib
{
    //设置placeholder颜色
    self.placeholderColor = [UIColor grayColor];
    //设置光标颜色
//    self.tintColor = [UIColor whiteColor];//已经在属性中设置过
    //监听点击事件
    [self addTarget:self action:@selector(editingDidBegin) forControlEvents:UIControlEventEditingDidBegin];
    [self addTarget:self action:@selector(editingDidEnd) forControlEvents:UIControlEventEditingDidEnd];
}
#pragma mark -设置数据
#pragma mark -设置方法
//UITextField开始编辑事件
-(void)editingDidBegin
{
    self.placeholderColor = [UIColor whiteColor];
    
}
//UITextField结束编辑事件
-(void)editingDidEnd
{
    self.placeholderColor = [UIColor grayColor];

}
#pragma mark -设置代理方法
@end
