//
//  KLAViewController.h
//  页面传值
//
//  Created by 黎嘉鸿 on 17/5/16.
//  Copyright © 2017年 MIchaelLee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PassValueDelegate.h"
#import "KLViewController.h"

typedef void(^returnTextBlock)(NSString *text); //定义传值block


@interface KLAViewController : UIViewController

@property (nonatomic, strong) id<PassValueDelegate> delegate; //传值协议

@property (nonatomic, copy) returnTextBlock returnTextBlock;  //传值block

- (void)returnText:(returnTextBlock)textBlock; //block方法



@end
