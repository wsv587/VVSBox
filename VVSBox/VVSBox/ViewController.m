//
//  ViewController.m
//  VVSBox
//
//  Created by ws on 17/1/23.
//  Copyright © 2017年 ws. All rights reserved.
//

#import "ViewController.h"
#import "Header.h"
#import "VVSPopoverAnimationManager+Translation.h"
#import "PopoverViewController.h"

@interface ViewController ()
{
    VVSPopoverAnimationManager *_popoverManager;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    PopoverViewController *toViewController = [PopoverViewController new];
    VVSPopoverAnimationManager *popoverManager = [[VVSPopoverAnimationManager alloc] initWithFromViewController:self toController:toViewController];
    [popoverManager setToViewSize:CGSizeMake([UIScreen mainScreen].bounds.size.width, 200) direction:VVSPopoverTranslationDown];
    _popoverManager = popoverManager;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [_popoverManager beginTranslation];
}
@end
