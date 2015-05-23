//
//  MyTabBar.m
//  MyTabBar
//
//  Created by WinsonLeung on 2014.
//  Copyright (c) 2014年 WinsonLeung. All rights reserved.
//

#import "MyTabBar.h"
#import "MyTabButton.h"

@interface MyTabBar()

@property (nonatomic, strong) NSArray *tabButtons;

@end

@implementation MyTabBar

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor grayColor];
        MyTabBarButton *btn1 = [[MyTabBarButton alloc] initWithIconImageName:@"favoritesIcon"];
        MyTabBarButton *btn2 = [[MyTabBarButton alloc] initWithIconImageName:@"mentionsIcon"];
        MyTabBarButton *btn3 = [[MyTabBarButton alloc] initWithIconImageName:@"messagesIcon"];
        MyTabBarButton *btn4 = [[MyTabBarButton alloc] initWithIconImageName:@"timelineIcon"];
        MyTabBarButton *btn5 = [[MyTabBarButton alloc] initWithIconImageName:@"searchIcon"];
        self.tabButtons = @[btn1, btn2, btn3, btn4, btn5];
        // [self layoutSubviews];
    }
    return self;
}

- (void)layoutSubviews {
    NSLog(@"layoutSubviews...");
    [super layoutSubviews];

    CGFloat x = self.bounds.origin.x;
    CGFloat y = self.bounds.origin.y;
    CGFloat width = self.bounds.size.width / 5;
    CGFloat height = self.bounds.size.height;

    for (MyTabBarButton *tab in _tabButtons) {
        [tab addTarget:self action:@selector(selectTab:) forControlEvents:UIControlEventTouchUpInside];
        tab.frame = CGRectMake(x, y, width, height);
        [self addSubview:tab];
        x += width;
    }

    [self selectTab:[_tabButtons objectAtIndex:0]];
}

- (void)selectTab:(MyTabBarButton *)sender {
    NSLog(@"tabSelected...");
    for (MyTabBarButton *tab in _tabButtons) {
        if (tab == sender) {
            [tab setSelected:YES];
        }
        else {
            [tab setSelected:NO];
        }
    }
}

@end
