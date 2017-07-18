//
//  HTUCenterViewController.m
//  CustomTransition
//
//  Created by ClassWizard on 2017/7/15.
//  Copyright © 2017年 ClassWizard. All rights reserved.
//

#import "HTUCenterViewController.h"

@interface HTUCenterViewController ()

@end

@implementation HTUCenterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.navigationController setNavigationBarHidden:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)close:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

@end
