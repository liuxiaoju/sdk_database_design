//
//  DBManager.h
//  SDKTest
//
//  Created by v_liuxiaoju on 2018/7/31.
//  Copyright © 2018年 v_liuxiaoju. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <FMDB.h>
#import "TableHeader.h"
#import "DBDefineHeader.h"
//#import <FMResultSet.h>
@class FMResultSet;
typedef  NS_OPTIONS(NSUInteger, DB_ACTION_TYPE) {
    DB_INSERT = 0 ,//增
    DB_DELETE ,    //删
    DB_UPDATE,     //改
    DB_SELECT,     //查
};
@interface DBManager : NSObject
//打开数据库
-(void)configureFMDB;
@end
