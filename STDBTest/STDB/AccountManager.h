//
//  AccountManager.h
//  SDKTest
//
//  Created by v_liuxiaoju on 2018/7/31.
//  Copyright © 2018年 v_liuxiaoju. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Account.h"

@interface AccountManager : NSObject
+ (instancetype)shareAccountManager;
//记录用户信息
- (BOOL)onLogin:(Account *)account;
//登出
- (BOOL)onLogout:(Account *)account;
//检查是否有落盘钥匙
- (BOOL)isExistsVirtualKey:(NSString *)accountID withVIN:(NSString *)vin;
//检查钥匙是否已激活
- (BOOL)isBluetoothKeyActiveed:(NSString *)accountID withVIN:(NSString *)vin;
//新增虚拟钥匙,检查钥匙有效性,有效则落盘存储
- (BOOL)addVirtualKey:(NSString *)appKey withBtVKey:(NSString *)btVkey;
// 删除虚拟钥匙时，删除其相应落盘数据
- (BOOL)removeVirtualKey:(NSString *)accountID withVIN:(NSString *)vin;
//设置当前车辆时落盘记录其状态
- (BOOL)setCurrentVehicle:(NSString *)accountID withVIN:(NSString *)vin;
@end
