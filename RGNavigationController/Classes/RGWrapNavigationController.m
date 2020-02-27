//
//  RGWrapNavigationController.m
//  NavigationController
//
//  Created by 浮生似梦、Dream on 2020/2/20.
//  Copyright © 2020 Dream. All rights reserved.
//

#import "RGWrapNavigationController.h"
#import "RGWrapViewController.h"
#import "RGNavigationController.h"
#import "UIViewController+RGNavigationController.h"

#define kDefaultBackImageName @"backImage@3x.png"

@interface RGWrapNavigationController ()

@end

@implementation RGWrapNavigationController


- (UIViewController *)popViewControllerAnimated:(BOOL)animated {
    return [self.navigationController popViewControllerAnimated:animated];
}

- (NSArray<UIViewController *> *)popToRootViewControllerAnimated:(BOOL)animated {
    return [self.navigationController popToRootViewControllerAnimated:animated];
}


- (NSArray<UIViewController *> *)popToViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    RGNavigationController *navController = viewController.rg_navigationController;
    NSInteger index = [navController.rg_viewControllers indexOfObject:viewController];
    return [self.navigationController popToViewController:navController.viewControllers[index] animated:animated];
}


- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    
    viewController.rg_navigationController = (RGNavigationController *)self.navigationController;
     UIImage *backButtonImage = viewController.rg_navigationController.backButtonImage;
    if (!backButtonImage){
        
        NSBundle *currentBundle = [NSBundle bundleForClass:[self class]];
        NSString *currentBundleName = [NSString stringWithFormat:@"%@.bundle",currentBundle.infoDictionary[@"CFBundleName"]];      
        NSString *backImgPath = [currentBundle pathForResource:kDefaultBackImageName ofType:nil inDirectory:currentBundleName];
        backButtonImage = [[UIImage imageWithContentsOfFile:backImgPath] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
    }
    
    id  target = self;
    if ([viewController respondsToSelector:@selector(backAction)])  target = viewController;
        
    if (self.viewControllers.count > 0) {
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:backButtonImage style:UIBarButtonItemStylePlain target:target action:@selector(backAction)];
        viewController.hidesBottomBarWhenPushed = YES;
    }
    
    
    [self.navigationController pushViewController:[RGWrapViewController wrapViewControllerWithRootViewController:viewController] animated:YES];
}


- (void)backAction {
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)dismissViewControllerAnimated:(BOOL)flag completion:(void (^)(void))completion{
    [self.navigationController dismissViewControllerAnimated:flag completion:completion];
    self.viewControllers.firstObject.rg_navigationController=nil;
    
}




@end
