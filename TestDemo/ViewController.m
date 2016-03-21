//
//  ViewController.m
//  TestDemo
//
//  Created by zhangfei on 16/1/10.
//  Copyright © 2016年 zhangfei. All rights reserved.
//

#import "ViewController.h"
#import "LoginSuccessViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *userName;
@property (weak, nonatomic) IBOutlet UITextField *passWord;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = YES;
}

- (IBAction)login:(UIButton *)sender {
    if ([self isLogin]) {
        LoginSuccessViewController *loginSuccessVC = [[LoginSuccessViewController alloc] init];
        [self.navigationController pushViewController:loginSuccessVC animated:YES];
    }
    
}

- (BOOL)isLogin{
    if ([self.userName.text isEqual:@""] || [self.passWord.text isEqual:@""]) {
        return NO;
    }else{
        return YES;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
@end