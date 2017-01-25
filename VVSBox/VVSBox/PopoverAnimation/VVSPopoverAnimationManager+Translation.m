//
//  VVSPopoverAnimationManager+Translation.m
//  VVSBox
//
//  Created by ws on 17/1/25.
//  Copyright © 2017年 ws. All rights reserved.
//

#import "VVSPopoverAnimationManager+Translation.h"

//@interface VVSPopoverAnimationManager ()
//{
//    
//}
//@end

static UIViewController *_fromController;
static UIViewController *_toController;
static VVSPopoverTranslationType _translationType;
@implementation VVSPopoverAnimationManager (Translation)

- (instancetype)initWithFromViewController:(nonnull UIViewController *)fromController toController:(nonnull UIViewController *)toController {
    
    if (self = [super init]) {
        if (!fromController || !toController) {
            return nil;
        }
        
        [fromController addChildViewController:toController];
        [fromController.view addSubview:toController.view];
        _fromController = fromController;
        _toController = toController;
    }
    return self;
}

- (void)setToViewSize:(CGSize)toViewSize direction:(VVSPopoverTranslationType)translationType {
    BOOL isNotZero = CGSizeEqualToSize(toViewSize, CGSizeZero);
    if (!isNotZero) {
        return;
    }
    _translationType = translationType;
    CGRect toViewFrame = CGRectZero;
    if (translationType == VVSPopoverTranslationUp) {
        toViewFrame = CGRectMake(0.f, _fromController.view.frame.size.height + toViewSize.height, toViewSize.width, toViewSize.height);
        
    } else if (translationType == VVSPopoverTranslationDown) {
        toViewFrame = CGRectMake(0.f, -toViewSize.height, toViewSize.width, toViewSize.height);
    } else if (translationType == VVSPopoverTranslationLeft) {
        toViewFrame = CGRectMake(-_toController.view.frame.size.width, 0.f, toViewSize.width, toViewSize.height);
    } else if (translationType == VVSPopoverTranslationRight) {
        toViewFrame = CGRectMake(_fromController.view.frame.size.width + _toController.view.frame.size.width, 0.f, toViewSize.width, toViewSize.height);
    }
    _toController.view.frame = toViewFrame;
}
- (void)beginTranslation {
    if (_translationType == VVSPopoverTranslationUp) {
        [UIView animateWithDuration:0.5f animations:^{
            CGRect toViewFrame = _toController.view.frame;
            toViewFrame.origin.y = _fromController.view.frame.size.height;
            _toController.view.frame = toViewFrame;
        } completion:^(BOOL finished) {
            
        }];
    } else if (_translationType == VVSPopoverTranslationDown) {
        [UIView animateWithDuration:0.5f animations:^{
            CGRect toViewFrame = _toController.view.frame;
            toViewFrame.origin.y = 0.001;
            _toController.view.frame = toViewFrame;
        } completion:^(BOOL finished) {
            
        }];

    } else if (_translationType == VVSPopoverTranslationLeft) {
        [UIView animateWithDuration:0.5f animations:^{
            CGRect toViewFrame = _toController.view.frame;
            toViewFrame.origin.x = 0.001;
            _toController.view.frame = toViewFrame;
        } completion:^(BOOL finished) {
            
        }];

    } else if (_translationType == VVSPopoverTranslationRight) {
        [UIView animateWithDuration:0.5f animations:^{
            CGRect toViewFrame = _toController.view.frame;
            toViewFrame.origin.y = _fromController.view.frame.size.width;
            _toController.view.frame = toViewFrame;
        } completion:^(BOOL finished) {
            
        }];

    }
}
@end
