//
//  UITextView+Placeholder.m
//  AliyunSales
//
//  Created by wangsong on 16/6/28.
//  Copyright © 2016年 alibaba. All rights reserved.
//

#import "UITextView+Placeholder.h"

@implementation UITextView (Placeholder)
+ (UITextView *)textViewWithPlaceholder:(NSString *)placeholder {
    UITextView *textView = [[UITextView alloc] init];
    
    return [textView setupPlaceholder:placeholder];
}

- (UITextView *)setupPlaceholder:(NSString *)placeholder {
    UILabel *placeHolderLabel = [[UILabel alloc] init];
    [placeHolderLabel sizeToFit];
    placeHolderLabel.numberOfLines = 0;
    placeHolderLabel.text = placeholder;
    placeHolderLabel.textColor = [UIColor lightGrayColor];
    placeHolderLabel.font = [UIFont systemFontOfSize:14.0];
    self.font = [UIFont systemFontOfSize:14.0];
    [self addSubview:placeHolderLabel];
    
    [self setValue:placeHolderLabel forKey:@"_placeholderLabel"];
    return self;
}

- (UITextView *)setupTextViewWithPlaceholder:(NSString *)placeholder {
    return [self setupPlaceholder:placeholder];
}

@end
