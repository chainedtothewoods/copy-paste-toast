//
//  CopyPasteView.m
//  SimpleCopyPasteView
//
//  Created by Michael Lapuebla on 7/5/16.
//  Copyright © 2016 Michael Lapuebla. All rights reserved.
//

#import "CopyPasteView.h"

#define kCPVAnimationDuration       0.25
#define kCPVAnimationFadeoutDelay   1.5
#define kCPVCheckmarkColor          [UIColor colorWithRed:0.294 green:0.698 blue:0.027 alpha:1] /*#4bb207*/

@implementation CopyPasteView

- (instancetype)init {
    
    if (self = [super init]) {
        self = [self loadViewFromNIB];
        self.frame = CGRectMake(self.frame.origin.x, [UIScreen mainScreen].bounds.size.height - self.frame.size.height,
                                [UIScreen mainScreen].bounds.size.width, self.frame.size.height);
        self.autoresizingMask = (UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleRightMargin);
        self.alpha = 0.0;
        [self styleMessageIconImage];
    }
    
    return self;
}

- (CopyPasteView *)loadViewFromNIB {
    return [[[NSBundle mainBundle] loadNibNamed:@"CopyPasteView" owner:self options:nil] firstObject];
}

- (void)layoutSubviews {
    // Anchor to Bottom -- Orientation Change
    double yAnchor = [UIScreen mainScreen].bounds.size.height - self.frame.size.height;
    self.frame = CGRectMake(self.frame.origin.x, yAnchor, self.frame.size.width, self.frame.size.height);
}

// *******************************************************
// MARK: - UI methods
// *******************************************************

- (void)styleMessageIconImage {
    self.messageIconImageView.image = [self.messageIconImageView.image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    [self.messageIconImageView setTintColor:kCPVCheckmarkColor];
}

// *******************************************************
// MARK: - Animation methods
// *******************************************************

- (void)animateWithFadeIn {
    [UIView animateWithDuration:kCPVAnimationDuration delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
        self.alpha = 1.0;
    } completion:^(BOOL finished) {
        [self animateWithFadeOut];
    }];
}

- (void)animateWithFadeOut {
    [UIView animateWithDuration:kCPVAnimationDuration delay:kCPVAnimationFadeoutDelay options:UIViewAnimationOptionCurveLinear animations:^{
        self.alpha = 0.0;
    } completion:^(BOOL finished) {
        // Do Nothing
    }];
}

@end
