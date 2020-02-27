//
//  MeViewController.m
//  MVCDemo
//
//  Created by 浮生似梦、Dream on 2018/6/25.
//  Copyright © 2018年 浮生似梦、Dream. All rights reserved.
//

#import "MeViewController.h"

@interface MeViewController ()

@end

@implementation MeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
