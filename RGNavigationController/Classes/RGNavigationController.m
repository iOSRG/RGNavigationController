//
//  RGNavigationController.m
//  NavigationController
//
//  Created by 浮生似梦、Dream on 2020/2/20.
//  Copyright © 2020 Dream. All rights reserved.
//

#import "RGNavigationController.h"
#import "RGWrapViewController.h"
#import "UIViewController+RGNavigationController.h"


@interface RGNavigationController () <UINavigationControllerDelegate,UIGestureRecognizerDelegate>

@property(nonatomic,strong) id interactivePopGestureRecognizerDelegate;
@property(nonatomic,strong) UIPanGestureRecognizer *panGestureRecognizer;
@end

@implementation RGNavigationController

- (instancetype)initWithRootViewController:(UIViewController *)rootViewController {
    if (self = [super init]) {
        rootViewController.rg_navigationController = self;
        self.viewControllers = @[[RGWrapViewController wrapViewControllerWithRootViewController:rootViewController]];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        self.viewControllers.firstObject.rg_navigationController = self;
        self.viewControllers = @[[RGWrapViewController wrapViewControllerWithRootViewController:self.viewControllers.firstObject]];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setNavigationBarHidden:YES];
    self.delegate = self;
    
    self.interactivePopGestureRecognizerDelegate = self.interactivePopGestureRecognizer.delegate;
    SEL action = NSSelectorFromString(@"handleNavigationTransition:");
    self.panGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self.interactivePopGestureRecognizerDelegate action:action];
    self.panGestureRecognizer.maximumNumberOfTouches = 1;
}


//MARK: - UINavigationControllerDelegate

- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
}
- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated {

    BOOL isRootController = viewController == navigationController.viewControllers.firstObject;
    
    self.interactivePopGestureRecognizer.delegate = self;
    self.interactivePopGestureRecognizer.enabled = !isRootController;
 
    if ([viewController isKindOfClass:[RGWrapViewController class]] && !isRootController) {
        
        RGWrapViewController *wrapVc = (RGWrapViewController *)viewController;
        if ([self.interactivePopGestureRecognizerDisEnableClassArr containsObject:[[wrapVc rootViewController] class]]) {
            self.interactivePopGestureRecognizer.enabled = NO;
        }
    }

}


//MARK: - UIGestureRecognizerDelegate

-(BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    return YES;
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldBeRequiredToFailByGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    return [gestureRecognizer isKindOfClass:UIScreenEdgePanGestureRecognizer.class];
}


- (NSArray *)rg_viewControllers {
    NSMutableArray *viewControllers = [NSMutableArray array];
    for (RGWrapViewController *wrapController in self.viewControllers) {
        [viewControllers addObject:wrapController.rootViewController];
    }
    return viewControllers;
}



@end
