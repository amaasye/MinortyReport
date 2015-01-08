//
//  ViewController.m
//  MinorityReport
//
//  Created by Syed Amaanullah on 1/8/15.
//  Copyright (c) 2015 Syed Amaanullah. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()
@property (weak, nonatomic) IBOutlet UILabel *futureLabel;
@property (weak, nonatomic) IBOutlet UILabel *thePreCogsLabel;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.barTintColor = [UIColor blueColor];
}
- (IBAction)onDrag:(UIPanGestureRecognizer *)sender {
    CGPoint point = [sender locationInView:self.view];
    self.futureLabel.center = point;

    if (CGRectContainsPoint(self.thePreCogsLabel.frame, point)) {
        self.futureLabel.text = @"A fictitious and incriminating future";

        [self.futureLabel sizeToFit];
    }

}



@end
