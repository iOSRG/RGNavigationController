//
//  TEST04ViewController.m
//  BackControl
//
//  Created by 浮生似梦、Dream on 2018/11/15.
//  Copyright © 2018年 Dream. All rights reserved.
//

#import "TEST04ViewController.h"

@interface TEST04ViewController ()

@end

@implementation TEST04ViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
}

//- (UIStatusBarStyle)preferredStatusBarStyle {
//    return UIStatusBarStyleDefault;
//}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"允许右滑返回-04";
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.navigationController popViewControllerAnimated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
