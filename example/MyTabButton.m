//
//  MyTabBarButton.m
//  MyTabBar
//
//  Created by WinsonLeung on 2014.
//  Copyright (c) 2014年 WinsonLeung. All rights reserved.
//

#import "MyTabButton.h"

@interface MyTabBarButton()

@end

@implementation MyTabBarButton

- (id)initWithIconImageName:(NSString *)imageName {
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor clearColor];

        NSString *normalIconName = [NSString stringWithFormat:@"%@.png", imageName];
        NSString *highlightedIconName = [NSString stringWithFormat:@"%@Highlighted.png", imageName];

        UIImage *normalIcon = [UIImage imageNamed:normalIconName];
        UIImage *highlightedIcon = [UIImage imageNamed:highlightedIconName];

        [self setImage:normalIcon forState:UIControlStateNormal];
        [self setImage:highlightedIcon forState:UIControlStateSelected];
        [self setImage:highlightedIcon forState:UIControlStateHighlighted];
    }
    return self;
}

@end
