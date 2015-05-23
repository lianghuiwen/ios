
#import <UIKit/UIKit.h>

@class MyTabBar;

@interface MyTabBarViewController : UIViewController

@property (nonatomic, strong) MyTabBar *myTabBar;
@property (nonatomic, strong) NSArray  *viewControllers;
@property (nonatomic) NSUInteger        selectedIndex;

@end
