//
//  DBManager.m
//  SDKTest
//
//  Created by v_liuxiaoju on 2018/7/31.
//  Copyright © 2018年 v_liuxiaoju. All rights reserved.
//
#define MRCLogLastError(db) NSLog(@"lastError: %@, lastErrorCode: %d, lastErrorMessage: %@", [db lastError], [db lastErrorCode], [db lastErrorMessage]);
#import "DBManager.h"
#import "FMDatabaseQueue+Helper.h"
@implementation DBManager
-(void)configureFMDB{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"update_v1_3_0" ofType:@"sql"];
  
}

@end
