#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "RGNavigationController.h"
#import "RGWrapNavigationController.h"
#import "RGWrapViewController.h"
#import "UIViewController+RGNavigationController.h"

FOUNDATION_EXPORT double RGNavigationControllerVersionNumber;
FOUNDATION_EXPORT const unsigned char RGNavigationControllerVersionString[];

