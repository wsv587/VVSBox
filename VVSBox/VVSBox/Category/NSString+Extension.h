//
//  NSString+Extension.h
//  AliyunSales
//
//  Created by wangsong on 16/7/15.
//  Copyright © 2016年 alibaba. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Extension)
/**
 *  获取沙盒document的路径
 *
 *  @return 返回路径字符串
 */
+ (NSString *)getDocumentsPath;
/**
 *  获取沙盒caches的路径
 *
 *  @return 返回路径字符串
 */
+ (NSString *)getCachesPath;
/**
 *  caches的路径后面拼接文件名
 *
 *  @return 返回路径字符串
 */
+ (NSString *)getCachesPathWithFileName:(NSString *)fileName;

@end
