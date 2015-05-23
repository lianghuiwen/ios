//
//  MyTabBar.h
//  MyTabBar
//
//  Created by WinsonLeung on 2014.
//  Copyright (c) 2014年 WinsonLeung. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MyTabBar;

@protocol MyTabBarDelegate <NSObject>

- (void)tabBar:(MyTabBar *)aTabBar didSelectTabAtIndex:(NSInteger)index;

@end

@interface MyTabBar : UIView

@end
