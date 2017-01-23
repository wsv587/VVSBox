//
//  NSFileManager+Extension.m
//  AliyunSales
//
//  Created by wangsong on 16/7/13.
//  Copyright © 2016年 alibaba. All rights reserved.
//

#import "NSFileManager+Extension.h"
#import "NSString+Extension.h"

@implementation NSFileManager (Extension)
+ (NSInteger)removeItemFromCachesWithPostfix:(NSString *)postfix {
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSString *documentsDirectory = [NSString getCachesPath];
    NSError *error = nil;
    NSArray *contents = [fileManager contentsOfDirectoryAtPath:documentsDirectory error:&error];
    if (error) {
        NSAssert(!error, @"reason:删除语音文件失败！！！%@",[error description]);
        return -1;
    }
    error = nil;
    NSEnumerator *enumertor = [contents objectEnumerator];
    NSString *filename = nil;
    NSInteger count = 0;
    while (filename = [enumertor nextObject]) { // 带后缀 比如:146815678.caf
        if ([[filename pathExtension] isEqualToString:postfix]) {
            [fileManager removeItemAtPath:[documentsDirectory stringByAppendingPathComponent:filename] error:&error];
            if (error) {
                error = nil;
                continue;
            }
            count += 1;
        }
    }
    return count;
}

+ (BOOL)removeItemFromCachesWithFileName:(NSString *)fileName {
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSString *documentsDirectory = [NSString getCachesPath];
    NSError *error = nil;
    return [fileManager removeItemAtPath:[documentsDirectory stringByAppendingPathComponent:fileName] error:&error];
}

@end
