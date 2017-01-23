//
//  RegularExpression.h
//  VVSBox
//
//  Created by ws on 17/1/23.
//  Copyright © 2017年 ws. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RegularExpression : NSObject
+ (BOOL)isMobileNumber:(NSString *)mobileNumber;
+ (BOOL)isEmail:(NSString *)email;

@end
