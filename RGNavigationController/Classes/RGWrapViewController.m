//
//  RGWrapViewController.m
//  NavigationController
//
//  Created by 浮生似梦、Dream on 2020/2/20.
//  Copyright © 2020 Dream. All rights reserved.
//

#import "RGWrapViewController.h"
#import "RGWrapNavigationController.h"

@interface RGWrapViewController ()

@end

static NSValue *rg_tabBarRectValue;

@implementation RGWrapViewController

+ (instancetype)wrapViewControllerWithRootViewController:(UIViewController *)rootViewController {
        
    RGWrapNavigationController *navController = [[RGWrapNavigationController alloc] init];
    navController.viewControllers = @[rootViewController];
    
    RGWrapViewController *wrapVC = [[RGWrapViewController alloc] init];
    [wrapVC.view addSubview:navController.view];
    [wrapVC addChildViewController:navController];
    return wrapVC;
}


- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    if (self.tabBarController && !rg_tabBarRectValue) {
        rg_tabBarRectValue = [NSValue valueWithCGRect:self.tabBarController.tabBar.frame];
    }
}


- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    if (self.tabBarController && [self rootViewController].hidesBottomBarWhenPushed) {
        self.tabBarController.tabBar.frame = CGRectZero;
    }
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.tabBarController.tabBar.translucent = YES;
    if (self.tabBarController && !self.tabBarController.tabBar.hidden && rg_tabBarRectValue) {
        self.tabBarController.tabBar.frame = rg_tabBarRectValue.CGRectValue;
    }
}


- (BOOL)hidesBottomBarWhenPushed {
    return [self rootViewController].hidesBottomBarWhenPushed;
}

- (UITabBarItem *)tabBarItem {
    return [self rootViewController].tabBarItem;
}

- (NSString *)title {
    return [self rootViewController].title;
}

- (UIViewController *)childViewControllerForStatusBarStyle {
    return [self rootViewController];
}

- (UIViewController *)childViewControllerForStatusBarHidden {
    return [self rootViewController];
}


- (UIViewController *)rootViewController {
    RGWrapNavigationController *wrapNavController = self.childViewControllers.firstObject;
    return wrapNavController.viewControllers.firstObject;
}


@end

