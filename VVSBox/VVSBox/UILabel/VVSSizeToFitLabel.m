//
//  VVSSizeToFitLabel.m
//  VVSSizeToFitButton
//
//  Created by ws on 17/1/23.
//  Copyright © 2017年 ws. All rights reserved.
//

#import "VVSSizeToFitLabel.h"

@implementation VVSSizeToFitLabel

- (void)setText:(NSString *)text {
    [super setText:text];
    [self sizeToFit];
}

@end
