//
//  TEST01ViewController.m
//  BackControl
//
//  Created by 浮生似梦、Dream on 2018/11/15.
//  Copyright © 2018年 Dream. All rights reserved.
//

#import "TEST01ViewController.h"

@interface TEST01ViewController ()

@end

@implementation TEST01ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%s",__func__);
    
    self.title = @"可以右滑返回-01";
    
    UIButton *btn = [UIButton buttonWithType:0];
    [self.view addSubview:btn];
    btn.backgroundColor = [UIColor orangeColor];
    btn.frame = CGRectMake(0, 100, 100, 100);
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    
}



- (void)btnAction {
    TEST02Controller *vc = [[TEST02Controller alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)dealloc {
    NSLog(@"%s",__func__);
}


@end
