//
//  VVSPopoverAnimationManager+Translation.h
//  VVSBox
//
//  Created by ws on 17/1/25.
//  Copyright © 2017年 ws. All rights reserved.
//

#import "VVSPopoverAnimationManager.h"

typedef enum : NSUInteger {
    VVSPopoverTranslationUp = 0,
    VVSPopoverTranslationDown,
    VVSPopoverTranslationLeft,
    VVSPopoverTranslationRight
} VVSPopoverTranslationType;

@interface VVSPopoverAnimationManager (Translation)

- (nullable instancetype)initWithFromViewController:(nonnull UIViewController *)fromController toController:(nonnull UIViewController *)toController;

- (void)setToViewSize:(CGSize)toViewSize direction:(VVSPopoverTranslationType)translationType;

- (void)beginTranslation;
@end
