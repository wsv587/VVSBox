//
//  NSString+Extension.m
//  AliyunSales
//
//  Created by wangsong on 16/7/15.
//  Copyright © 2016年 alibaba. All rights reserved.
//

#import "NSString+Extension.h"

@implementation NSString (Extension)
+ (NSString *)getDocumentsPath {
    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    return path;
}

+ (NSString *)getCachesPath {
    NSString *path = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject];
    return path;
}

+ (NSString *)getCachesPathWithFileName:(NSString *)fileName {
    NSString *fullPath =[[self getCachesPath] stringByAppendingPathComponent:fileName.lastPathComponent];
    return fullPath;
}
@end
