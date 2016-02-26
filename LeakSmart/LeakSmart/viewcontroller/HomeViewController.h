//
//  HomeViewController.h
//  LeakSmart
//
//  Created by AnCheng on 2/26/16.
//  Copyright © 2016 Radu Vila. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController <SlideNavigationControllerDelegate>

@property (nonatomic ,assign) IBOutlet UIButton *closeBtn;
@property (nonatomic ,assign) IBOutlet UIButton *openBtn;

@property (nonatomic ,assign) IBOutlet UILabel *lbl1;
@property (nonatomic ,assign) IBOutlet UILabel *lbl2;

- (IBAction)onClose:(id)sender;
- (IBAction)onOpen:(id)sender;

- (IBAction)onLeftMenu:(id)sender;
- (IBAction)onRightMenu:(id)sender;

@end
