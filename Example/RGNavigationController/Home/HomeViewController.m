//
//  HomeViewController.m
//  MVCDemo
//
//  Created by 浮生似梦、Dream on 2018/6/25.
//  Copyright © 2018年 浮生似梦、Dream. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
//    self.navigationController.interactivePopGestureRecognizer.enabled = NO;
    NSLog(@"%s,%@",__func__,self);
    self.navigationController.navigationBar.hidden = YES;
    
    
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    NSLog(@"%s,%@",__func__,self);
//    self.navigationController.navigationBar.hidden = YES;
    
}


- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"navigationController = %@",self.navigationController);
    NSLog(@"self.navigationController.navigationBar = %@",self.navigationController.navigationBar);
    
    NSLog(@"%s,%@",__func__,self);
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"%s,%@",__func__,self);
}





//- (void)viewWillAppear:(BOOL)animated {
//    [super viewWillAppear:animated];
//    self.navigationController.navigationBarHidden = YES;
//    NSLog(@"%s",__func__);
//}
//
//- (void)viewWillDisappear:(BOOL)animated {
//    [super viewWillDisappear:animated];
//    self.navigationController.navigationBarHidden = NO;
//    NSLog(@"%s",__func__);
//}


- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%s,%@",__func__,self);
    
    
    UIButton *btn = [UIButton buttonWithType:0];
    [self.view addSubview:btn];
    btn.backgroundColor = [UIColor orangeColor];
    btn.frame = CGRectMake(0, 100, 100, 100);
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    
    
    
}



- (void)btnAction {
  TEST01ViewController *vc = [[TEST01ViewController alloc] init];
    
  [self.navigationController pushViewController:vc animated:YES];
}






@end
