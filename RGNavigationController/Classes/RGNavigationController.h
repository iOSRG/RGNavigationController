//
//  RGNavigationController.h
//  NavigationController
//
//  Created by 浮生似梦、Dream on 2020/2/20.
//  Copyright © 2020 Dream. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol RGNavigationControllerProtocol <NSObject>

@optional;
///在返回按钮触发时进行自定义返回操作
- (void)backAction;

@end

@interface RGNavigationController : UINavigationController

///栈中所有wrapController所包含的子控制器RGWrapNavigationController的根控制器
@property(nonatomic,strong) NSArray *rg_viewControllers;

@property(nonatomic,strong) UIImage *backButtonImage;
///限制不能右滑返回的页面
@property(nonatomic,strong) NSArray <Class> *interactivePopGestureRecognizerDisEnableClassArr;

@end





NS_ASSUME_NONNULL_END
