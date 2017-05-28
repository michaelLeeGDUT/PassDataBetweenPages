//
//  PassValueDelegate.h
//  页面传值
//
//  Created by 黎嘉鸿 on 17/5/16.
//  Copyright © 2017年 MIchaelLee. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PassValueDelegate <NSObject>

@optional

- (void)passValue:(NSString *)value;

@end
