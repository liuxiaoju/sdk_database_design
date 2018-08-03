//
//  AccountInfo.h
//  SDKTest
//
//  Created by v_liuxiaoju on 2018/8/1.
//  Copyright © 2018年 v_liuxiaoju. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Account.h"

@interface AccountInfo : NSObject
- (BOOL)isLoggedIn:(Account*)account;
//    boolean isLoggedIn();
@end
