//
//  TEST02Controller.m
//  BackControl
//
//  Created by 浮生似梦、Dream on 2018/11/15.
//  Copyright © 2018年 Dream. All rights reserved.
//

#import "TEST02Controller.h"

@interface TEST02Controller ()

@end

@implementation TEST02Controller

//- (void)viewWillAppear:(BOOL)animated {
//    [super viewWillAppear:animated];
//    self.navigationController.navigationBarHidden = YES;
//}
//
//- (void)viewWillDisappear:(BOOL)animated {
//    [super viewWillDisappear:animated];
//    self.navigationController.navigationBarHidden = NO;
//}



- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%s",__func__);
    
    self.title = @"不可右滑返回-02";
    
    UIButton *btn = [UIButton buttonWithType:0];
    [self.view addSubview:btn];
    btn.backgroundColor = [UIColor orangeColor];
    btn.frame = CGRectMake(0, 100, 100, 100);
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
     
}



- (void)btnAction {
    TEST03ViewController *vc = [[TEST03ViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)dealloc {
    NSLog(@"%s",__func__);
}


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"%s",__func__);
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"%s",__func__);
}


- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"%s",__func__);
}


- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"%s",__func__);
}

@end
