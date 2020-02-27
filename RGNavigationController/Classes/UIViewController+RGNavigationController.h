//
//  UIViewController+RGNavigationController.h
//  NavigationController
//
//  Created by 浮生似梦、Dream on 2020/2/20.
//  Copyright © 2020 Dream. All rights reserved.
//


#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class RGNavigationController;
@interface UIViewController (RGNavigationController)

@property(nonatomic,strong) RGNavigationController *rg_navigationController;

@end

NS_ASSUME_NONNULL_END
