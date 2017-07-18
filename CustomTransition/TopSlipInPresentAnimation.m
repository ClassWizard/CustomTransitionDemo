//
//  TopSlipInPresentAnimation.m
//  CustomTransition
//
//  Created by ClassWizard on 2017/7/15.
//  Copyright © 2017年 ClassWizard. All rights reserved.
//

#import "TopSlipInPresentAnimation.h"
#import "HTUCenterViewController.h"

@implementation TopSlipInPresentAnimation

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext {
    return 1;
}

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext {
    // 1. Get controllers from transition context
    UIViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
    NSAssert([toVC isKindOfClass:[UINavigationController class]], @"转场动画使用有误！");
    NSAssert([[(UINavigationController *)toVC visibleViewController] isKindOfClass:[HTUCenterViewController class]], @"转场动画使用有误！");

    // 2. Set init frame for toVC
    CGRect finalFrame = [transitionContext finalFrameForViewController:toVC];
    toVC.view.frame = finalFrame;
    toVC.view.alpha = 0;
    
    HTUCenterViewController *vc = (HTUCenterViewController *)[(UINavigationController *)toVC visibleViewController];
    vc.topView.transform = CGAffineTransformMakeTranslation(0, -44);
    
    NSArray *animateViews = @[vc.avatarImageView,
                              vc.orderCellBtn,
                              vc.messageCellBtn,
                              vc.helpCellBtn,
                              vc.settingPasswordCellBtn,
                              vc.contactUsCellBtn,
                              vc.aboutUsCellBtn,
                              vc.clearCacheCellBtn];
    for (UIView *view in animateViews) {
        view.transform = CGAffineTransformMakeTranslation(0, -30);
        view.alpha = 0;
    }
    
    // 3. Add toVC's view to containerView
    UIView *containerView = [transitionContext containerView];
    [containerView addSubview:toVC.view];
    
    // 4. Do animate now
    NSTimeInterval duration = [self transitionDuration:transitionContext];
    [UIView animateWithDuration:duration * 0.2 animations:^{
        toVC.view.alpha = 1;
        vc.topView.transform = CGAffineTransformMakeTranslation(0, 0);
        
    } completion:^(BOOL finished) {
        for (NSUInteger i = 0; i < animateViews.count; i++) {
            UIView *view = animateViews[i];
            [UIView animateWithDuration:duration * 0.1 delay:i * 0.1 * duration options:UIViewAnimationOptionCurveEaseInOut animations:^{
                view.transform = CGAffineTransformMakeTranslation(0, 0);
                view.alpha = 1;
            } completion:^(BOOL finished) {
                if ((i+1) == animateViews.count) {
                    [transitionContext completeTransition:YES];
                }
            }];
        }
    }];
    
    
}

@end
