//
//  FMDatabaseQueue+Helper.m
//  SDKTest
//
//  Created by v_liuxiaoju on 2018/8/1.
//  Copyright © 2018年 v_liuxiaoju. All rights reserved.
//
///-----
/// FMDB
///-----
#define MRC_DOCUMENT_DIRECTORY NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject
#define MRC_APP_NAME    ([[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleName"])
#define MRC_FMDB_PATH [NSString stringWithFormat:@"%@/%@.db", MRC_DOCUMENT_DIRECTORY, MRC_APP_NAME]

#define MRCLogLastError(db) NSLog(@"lastError: %@, lastErrorCode: %d, lastErrorMessage: %@", [db lastError], [db lastErrorCode], [db lastErrorMessage]);

#import "FMDatabaseQueue+Helper.h"

@implementation FMDatabaseQueue (Helper)
+ (instancetype)sharedInstance {
    static FMDatabaseQueue *databaseQueue = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        databaseQueue = [FMDatabaseQueue databaseQueueWithPath:MRC_FMDB_PATH];
        NSLog(@"%@", MRC_FMDB_PATH);
        NSLog(@"%@", MRC_FMDB_PATH);
        
    });
    return databaseQueue;
}
@end
