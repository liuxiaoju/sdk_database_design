//
//  Table.h
//  STReader
//
//  Created by StriEver on 16/8/19.
//  Copyright © 2016年 StriEver. All rights reserved.
//

#ifndef Table_h
#define Table_h
#import "DBDefine.h"
#define ST_DB_CREATE_BOOKCHAPTERINFO          @"CREATE TABLE IF NOT EXISTS bookChapterProgressInfo (bookId INTEGER primary key, bookName tetx,Chapter integer,SecChapter integer,currentPageIdx integer)"

#define ST_TB_CREATE_CFG                      @"CREATE TABLE IF NOT EXISTS readerCfg (cfgId  text , state INTEGER ,fontSize Single)"

#define ST_TB_CREATE_BOOKINFO                 @"CREATE TABLE IF NOT EXISTS bookInfoTable (bookId text primary key,file_version text,hot_sort text,pic text,name text,path text,time double)"

//ZOE
#define ZOE_DB_CREATE_ACCOUNT @"CREATE TABLE IF NOT EXISTS ACCOUNT (id INTEGER PRIMARY KEY, ACCOUNT_ID TEXT, ACCOUNT_STATE INTEGER, ACCOUNT_GUEST INTEGER, DATE_LOGIN TEXT, ACCOUNT_CURRENT TEXT)"
#define ZOE_DB_CREATE_VEHICLE @"CREATE TABLE IF NOT EXISTS VEHICLE (id INTEGER PRIMARY KEY, ACCOUNT_ID TEXT, VIN TEXT, MAC TEXT, ROLE TEXT, AUTH_CODE TEXT, DATE_START TEXT, DATE_END TEXT, KEY TEXT, KEY_BT TEXT, KEY_BT_SET TEXT)"
#endif /* Table_h */
//ZOE_DB
