//
//  BaseTabBarController.m
//  MVCDemo
//
//  Created by 浮生似梦、Dream on 2018/6/21.
//  Copyright © 2018年 浮生似梦、Dream. All rights reserved.
//

#import "BaseTabBarController.h"

#import "RGNavigationController.h"


@interface BaseTabBarController ()

@end

@implementation BaseTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    self.view.backgroundColor = [UIColor whiteColor];
    
    NSBundle *mainBundle = [NSBundle mainBundle];
    NSString *path = [mainBundle pathForResource:@"BaseControllerConfigure" ofType:@"plist"];
    NSArray *controllerInfoArr = [NSArray arrayWithContentsOfFile:path];

    NSInteger i = 1;
    for (NSDictionary *vcInfo in controllerInfoArr) {
        
        
        Class controller =  NSClassFromString(emptyString(vcInfo[@"ClassName"]));
                   UIViewController *controllerVc = [[controller alloc] init];
                   [self setupChildVc:controllerVc title:emptyString(vcInfo[@"Title"]) image:emptyString(vcInfo[@"NormalImage"]) selectedImage:emptyString(vcInfo[@"SelectedImage"])];

    }
     
}

/**
 * 初始化子控制器
 */
- (void)setupChildVc:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    
    vc.navigationItem.title = title;
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = [[UIImage imageNamed:image] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.titlePositionAdjustment = UIOffsetMake(0, -2);
    [vc.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName : KAPPTabBarTitleColor} forState:UIControlStateSelected];
    

    RGNavigationController *nav = [[RGNavigationController alloc] initWithRootViewController:vc];
    nav.interactivePopGestureRecognizerDisEnableClassArr = @[NSClassFromString(@"TEST02Controller")];
    
    [self addChildViewController:nav];
}

@end
