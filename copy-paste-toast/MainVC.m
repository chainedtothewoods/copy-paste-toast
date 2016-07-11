//
//  MainVC.m
//  copy-paste-toast
//
//  Created by Mike Limestro on 7/11/16.
//  Copyright © 2016 Mike Lapuebla. All rights reserved.
//

#import "MainVC.h"
#import "CopyPasteView.h"

@interface MainVC ()

@property (nonatomic) CopyPasteView *cpView;

@end

@implementation MainVC

- (void)viewDidLoad {
    [super viewDidLoad];
    

    [self setupCopyPasteToast];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// *******************************************************
// MARK: - UI methods
// *******************************************************

- (void)setupCopyPasteToast {
    self.cpView = [[CopyPasteView alloc] init];
    [self.view addSubview:self.cpView];
}

// *******************************************************
// MARK: - IBAction methods
// *******************************************************

- (IBAction)toggleAnimation:(id)sender {
    [self.cpView animateWithFadeIn];
}

@end
