//
//  ViewController.m
//  CustomTransition
//
//  Created by ClassWizard on 2017/7/15.
//  Copyright © 2017年 ClassWizard. All rights reserved.
//

#import "ViewController.h"
#import "TopSlipInPresentAnimation.h"
#import "TopSlipOutDismissAnimation.h"

@interface ViewController () <UIViewControllerTransitioningDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickPushBtn:(id)sender {
    UINavigationController *nav = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]] instantiateViewControllerWithIdentifier:@"HTUCenterNav"];
    nav.transitioningDelegate = self;
    [self presentViewController:nav animated:YES completion:^{
        
    }];
}

#pragma mark - TransitioningDelegate
- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source {
    return [TopSlipInPresentAnimation new];
}

- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    return [TopSlipOutDismissAnimation new];
}

@end
