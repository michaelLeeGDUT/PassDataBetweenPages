//
//  KLViewController.m
//  页面传值
//
//  Created by 黎嘉鸿 on 17/5/16.
//  Copyright © 2017年 MIchaelLee. All rights reserved.
//

#import "KLViewController.h"
#import "KLAViewController.h"
#import "PassValueDelegate.h"

@interface KLViewController () <PassValueDelegate>

@property (weak, nonatomic) IBOutlet UILabel *textLabel; //显示block传递的值
@property (weak, nonatomic) IBOutlet UILabel *valueLabel; //显示协议传递的值
@property (weak, nonatomic) IBOutlet UILabel *directLabel; //显示直接传递的值



@end

@implementation KLViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    if (self.directText!=nil) {
        self.directLabel.text=self.directText;
    }
    
}


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    
}


- (IBAction)buttonActive:(id)sender {
    KLAViewController *aViewC = [[KLAViewController alloc] init];
    
    //接收到block传递过来的值
    [aViewC returnText:^(NSString *text) {
        self.textLabel.text = text;
    }];
    
    aViewC.delegate = self;
    
    [self presentViewController:aViewC animated:YES completion:nil
     ];
    
}

#pragma mark - PassValueDelegate
- (void)passValue:(NSString *)value
{
    NSLog(@"----------------------,%@",value);
    self.valueLabel.text = value;
}


@end
