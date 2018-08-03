//
//  Account.h
//  SDKTest
//
//  Created by v_liuxiaoju on 2018/7/31.
//  Copyright © 2018年 v_liuxiaoju. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Account : NSObject
//用户id
@property (copy, nonatomic) NSString *account_id;
//身份
@property (copy, nonatomic) NSString *is_guest;
//tag是否是游客
@property(copy, nonatomic) NSString *login_state;
//登录登出
@property (copy, nonatomic) NSString *login_date;
//哪辆车
@property (copy, nonatomic) NSString *currentCar;
//登录登出时间
@property (copy, nonatomic) NSString *didLoginTime;
@end
