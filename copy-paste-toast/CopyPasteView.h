//
//  CopyPasteView.h
//  SimpleCopyPasteView
//
//  Created by Michael Lapuebla on 7/5/16.
//  Copyright © 2016 Michael Lapuebla. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CopyPasteView : UIView

@property (nonatomic, weak) IBOutlet UIImageView *messageIconImageView;

- (void)animateWithFadeIn;

@end
