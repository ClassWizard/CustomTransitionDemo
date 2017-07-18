//
//  HTUCenterViewController.h
//  CustomTransition
//
//  Created by ClassWizard on 2017/7/15.
//  Copyright © 2017年 ClassWizard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HTUCenterViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *topView;
@property (weak, nonatomic) IBOutlet UIImageView *avatarImageView;
@property (weak, nonatomic) IBOutlet UIButton *orderCellBtn;
@property (weak, nonatomic) IBOutlet UIButton *messageCellBtn;
@property (weak, nonatomic) IBOutlet UIButton *helpCellBtn;
@property (weak, nonatomic) IBOutlet UIButton *settingPasswordCellBtn;
@property (weak, nonatomic) IBOutlet UIButton *contactUsCellBtn;
@property (weak, nonatomic) IBOutlet UIButton *aboutUsCellBtn;
@property (weak, nonatomic) IBOutlet UIButton *clearCacheCellBtn;

@end
