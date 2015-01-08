//
//  ViewController.m
//  MinorityReport
//
//  Created by Syed Amaanullah on 1/8/15.
//  Copyright (c) 2015 Syed Amaanullah. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *futureLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.barTintColor = [UIColor blueColor];
}
- (IBAction)onDrag:(UIPanGestureRecognizer *)sender {
    CGPoint point = [sender locationInView:self.view];
    self.futureLabel.center = point;
    NSLog(@"%f %f", point.x, point.y);
}



@end
