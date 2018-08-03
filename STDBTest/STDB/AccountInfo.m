//
//  AccountInfo.m
//  SDKTest
//
//  Created by v_liuxiaoju on 2018/8/1.
//  Copyright © 2018年 v_liuxiaoju. All rights reserved.
//

#import "AccountInfo.h"
#import "FMDatabaseQueue+Helper.h"
#import "AccountManager.h"
#import "DBManager.h"
#define MRCLogLastError(db) NSLog(@"lastError: %@, lastErrorCode: %d, lastErrorMessage: %@", [db lastError], [db lastErrorCode], [db lastErrorMessage]);

@implementation AccountInfo
- (BOOL)isLoggedIn:(Account *)account{
         __block BOOL result = YES;
        Account *myaccount = account;
        DBManager *dbmanager = [[DBManager alloc] init];
        [dbmanager configureFMDB];
        [[FMDatabaseQueue sharedInstance] inDatabase:^(FMDatabase * _Nonnull db) {
            FMResultSet *rs = [db executeQuery:@"SELECT * FROM ACCOUNT WHERE ACCOUNT_ID = ? LIMIT 1;",myaccount.account_id];
            if (rs == nil) {
                MRCLogLastError(db);
                result = NO;
                return;
            }
            result = ![rs next] ? NO:YES;
        }];
       return result;

}
@end
