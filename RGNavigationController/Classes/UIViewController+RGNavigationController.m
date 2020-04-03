//
//  UIViewController+RGNavigationController.m
//  NavigationController
//
//  Created by 浮生似梦、Dream on 2020/2/20.
//  Copyright © 2020 Dream. All rights reserved.
//

#import "UIViewController+RGNavigationController.h"
#import "RGNavigationController.h"
#import <objc/runtime.h>


@implementation UIViewController (RGNavigationController)


- (RGNavigationController *)rg_navigationController {
    return objc_getAssociatedObject(self, _cmd);
}

- (void)setRg_navigationController:(RGNavigationController *)rg_navigationController {
        
    objc_setAssociatedObject(self, @selector(rg_navigationController), rg_navigationController, OBJC_ASSOCIATION_ASSIGN);
}



@end
