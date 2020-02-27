//
//  TEST03ViewController.m
//  BackControl
//
//  Created by 浮生似梦、Dream on 2018/11/15.
//  Copyright © 2018年 Dream. All rights reserved.
//

#import "TEST03ViewController.h"
#import "RGNavigationController.h"

@interface TEST03ViewController () <RGNavigationControllerProtocol>

@end

@implementation TEST03ViewController

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.title = @"点击右滑返回直接返回到首页-03";
    UIButton *btn = [UIButton buttonWithType:0];
    [self.view addSubview:btn];
    btn.backgroundColor = [UIColor orangeColor];
    btn.frame = CGRectMake(0, 100, 100, 100);
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    
}


- (void)btnAction {
    TEST04ViewController *vc = [[TEST04ViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}


- (void)dealloc {
    NSLog(@"%s",__func__);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)backAction {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

@end
