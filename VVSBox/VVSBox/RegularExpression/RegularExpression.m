//
//  RegularExpression.m
//  VVSBox
//
//  Created by ws on 17/1/23.
//  Copyright © 2017年 ws. All rights reserved.
//

#import "RegularExpression.h"
#import "RegExCategories.h"

@implementation RegularExpression
// 移动 139、138、137、136、135、134、159、150、151、158、157、188、187、152、182、147号段
// 联通 130、131、132、155、156、145、185、186、176号段
// 电信 133、153、180、181、189、177、173、149号段
+ (BOOL)isMobileNumber:(NSString *)mobileNumber {
    BOOL isMatch = [mobileNumber isMatch:RX(@"^((13[0-9])|(14[0-9])|(15[0,0-9])|(17[0-9])|(18[0,0-9]))\\d{8}$")];
    return isMatch;
}

+ (BOOL)isEmail:(NSString *)email {
    BOOL isMatch = [email isMatch:RX(@"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}")];
    return isMatch;
}

@end
