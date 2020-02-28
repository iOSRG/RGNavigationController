# RGNavigationController

[![CI Status](https://img.shields.io/travis/18607304107@163.com/RGNavigationController.svg?style=flat)](https://travis-ci.org/18607304107@163.com/RGNavigationController)
[![Version](https://img.shields.io/cocoapods/v/RGNavigationController.svg?style=flat)](https://cocoapods.org/pods/RGNavigationController)
[![License](https://img.shields.io/cocoapods/l/RGNavigationController.svg?style=flat)](https://cocoapods.org/pods/RGNavigationController)
[![Platform](https://img.shields.io/cocoapods/p/RGNavigationController.svg?style=flat)](https://cocoapods.org/pods/RGNavigationController)

## 功能


1. 每个页面有自己单独的导航栏,隐藏某个页面的导航栏只需要self.navigationController.navigationBar.hidden = YES;
 进入下个页面,导航栏自动显示,无需设置隐藏属性
 
 
2.默认支持右滑返回,如果想要关闭某个页面的右滑返回,只需要设置interactivePopGestureRecognizerDisEnableClassArr属性
 
 
3.如果需要自定义返回按钮事件,则只需要在对应页面控制器遵守RGNavigationControllerProtocol协议,实现- (void)backAction方法
 
 
4.设置返回按钮的图片可以使用backButtonImage
 
 
5.此框架主要借鉴JTNavigationController,并在此上面扩展了2,3两项功能
 
## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.
 
## Requirements

## Installation

RGNavigationController is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'RGNavigationController'
```

## Author

18607304107@163.com, gui.ren@hand-china.com

## License

RGNavigationController is available under the MIT license. See the LICENSE file for more info.
