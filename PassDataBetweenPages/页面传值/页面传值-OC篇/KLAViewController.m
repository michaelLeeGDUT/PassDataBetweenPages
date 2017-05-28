//
//  KLAViewController.m
//  页面传值
//
//  Created by 黎嘉鸿 on 17/5/16.
//  Copyright © 2017年 MIchaelLee. All rights reserved.
//

#import "KLAViewController.h"

@interface KLAViewController () <UITabBarControllerDelegate>

@property (weak, nonatomic) IBOutlet UITextField *myTextField; //输入block传递的值
@property (weak, nonatomic) IBOutlet UITextField *valueTextField; //输入协议传递的值
@property (weak, nonatomic) IBOutlet UITextField *directTextField; //输入直接传递的值

@end

@implementation KLAViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //设置手势监听，点击键盘外区域时收起键盘
    UITapGestureRecognizer *tapGr = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewTapped)];
    tapGr.cancelsTouchesInView = NO;
    [self.view addGestureRecognizer:tapGr];
}



- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
}


//实现block方法
- (void)returnText:(returnTextBlock)textBlock
{
    self.returnTextBlock = textBlock;
}


//点击block传值按钮跳转
- (IBAction)buttonAction:(id)sender {
    self.returnTextBlock(self.myTextField.text);
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

//点击直接传值按钮跳转
- (IBAction)directAction:(id)sender {
    
    KLViewController* klVC=[[KLViewController alloc] init];
    klVC.directText=self.directTextField.text;
    [self presentViewController:klVC animated:YES completion:nil];
    
}

//点击协议传值按钮跳转
- (IBAction)delegateAction:(id)sender {
    
    [self.delegate passValue:self.valueTextField.text];
    [self dismissViewControllerAnimated:YES completion:nil];

    
}

//收起键盘
- (void)viewTapped {
    [self.myTextField resignFirstResponder];
    [self.valueTextField resignFirstResponder];
    [self.directTextField resignFirstResponder];
}

@end
