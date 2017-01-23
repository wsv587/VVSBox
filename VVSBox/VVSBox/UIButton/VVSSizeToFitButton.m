//
//  VVSSizeToFitButton.m
//  VVSSizeToFitButton
//
//  Created by ws on 17/1/23.
//  Copyright © 2017年 ws. All rights reserved.
//

#import "VVSSizeToFitButton.h"

@implementation VVSSizeToFitButton

- (void)awakeFromNib {
    [super awakeFromNib];
    [self setImage:[UIImage imageNamed:@"arrowDown"] forState:UIControlStateNormal];
    [self setImage:[UIImage imageNamed:@"arrowUp"] forState:UIControlStateSelected];
    
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setImage:[UIImage imageNamed:@"arrowDown"] forState:UIControlStateNormal];
        [self setImage:[UIImage imageNamed:@"arrowUp"] forState:UIControlStateSelected];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
//    CGFloat titleY = CGRectGetMinY(self.titleLabel.frame);
//    CGFloat titleW = CGRectGetWidth(self.frame) - 10.f;
//    CGFloat titleH = CGRectGetHeight(self.titleLabel.frame);
//    self.titleLabel.frame = CGRectMake(0.f, titleY, titleW, titleH);
//    
//    CGFloat imageX = CGRectGetMaxX(self.titleLabel.frame) + 3.f;
//    CGFloat imageY = CGRectGetMinY(self.imageView.frame);
//    CGFloat imageW = 10.f;
//    CGFloat imageH = 7.f;
//    self.imageView.frame = CGRectMake(imageX, imageY, imageW, imageH);
//    self.imageView.center = CGPointMake(imageX, CGRectGetMidY(self.titleLabel.frame));
}

/**重写setHightlighted:
 * 空实现：为了避免高亮状态下图片也高亮
 */
- (void)setHighlighted:(BOOL)highlighted { }

/**
 * 重写setTitle:forState:方法，调用父类的默认实现
 *  然后调用sizeToFit根据内容调整button的size
 */
- (void)setTitle:(NSString *)title forState:(UIControlState)state {
    [super setTitle:title forState:state];
    [self sizeToFit];
}

@end
