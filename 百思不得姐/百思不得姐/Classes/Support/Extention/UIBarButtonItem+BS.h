//
//  UIBarButtonItem+BS.h
//  百思不得姐
//
//  Created by duanApple on 16/10/28.
//  Copyright © 2016年 Wuhan University. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (BS)
//初始化UINavigationItem
+(UIBarButtonItem *)itemWithImage:(UIImage *)image hightlightImage:(UIImage *)highlightImage target:(id)target action:(SEL)action;
@end
