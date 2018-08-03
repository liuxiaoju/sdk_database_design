



//
//  AccountManager.m
//  SDKTest
//
//  Created by v_liuxiaoju on 2018/7/31.
//  Copyright © 2018年 v_liuxiaoju. All rights reserved.
//

#import "AccountManager.h"
#import "AccountInfo.h"
#import "DBManager.h"
#import "FMDatabaseQueue+Helper.h"
#import "DBDefineHeader.h"
#define MRCLogLastError(db) NSLog(@"lastError: %@, lastErrorCode: %d, lastErrorMessage: %@", [db lastError], [db lastErrorCode], [db lastErrorMessage]);
@implementation AccountManager
+ (instancetype)shareAccountManager{
    static AccountManager *accountManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        accountManager = [[AccountManager alloc] init];
    });
    return accountManager;
}
//- (NSDictionary *)toDBDictionary {
//    NSMutableDictionary *dictionary = [MTLJSONAdapter JSONDictionaryFromModel:self].mutableCopy;
//
//    dictionary[@"owner_login"] = dictionary[@"owner"][@"login"];
//    dictionary[@"owner_avatar_url"] = dictionary[@"owner"][@"avatar_url"];
//
//    return dictionary;
//}

- (BOOL)onLogin:(Account *)account{
    __block BOOL result = YES;
    Account *myaccount = account;
    [[FMDatabaseQueue sharedInstance] inDatabase:^(FMDatabase * _Nonnull db) {
        FMResultSet *rs = [db executeQuery:@"SELECT * FROM ACCOUNT WHERE ACCOUNT_ID",myaccount.account_id];
        if (rs == nil) {
            MRCLogLastError(db);
            result = NO;
            return;
        }
        if ([rs next]) {
            NSLog(@"%@", rs);
        }
    }];
    return result;
//  AccountInfo *info = [[AccountInfo alloc] init];
//   BOOL isLogin =  [info isLoggedIn:account];
////    if (isLogin) {
//        return YES;
//    }else{
//        [[FMDatabaseQueue sharedInstance] inDatabase:^(FMDatabase * _Nonnull db) {
//
//        }];
//    }
}
@end
