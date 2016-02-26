//
//  HomeViewController.m
//  LeakSmart
//
//  Created by AnCheng on 2/26/16.
//  Copyright © 2016 Radu Vila. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self addClearBorder:_openBtn];
    [self addBorder:_closeBtn];
    
    [self addLabelBorder:_lbl1];
    [self addLabelBorder:_lbl2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)onClose:(id)sender
{
    [self addClearBorder:_openBtn];
    [self addBorder:_closeBtn];
    
    _lbl1.backgroundColor = [UIColor colorWithHexString:@"#40B843"];
    _lbl2.backgroundColor = [UIColor colorWithHexString:@"#F3EFF0"];
}

- (IBAction)onOpen:(id)sender
{
    [self addClearBorder:_closeBtn];
    [self addBorder:_openBtn];
    
    _lbl2.backgroundColor = [UIColor colorWithHexString:@"#40B843"];
    _lbl1.backgroundColor = [UIColor colorWithHexString:@"#F3EFF0"];
}

- (IBAction)onLeftMenu:(id)sender
{
    if ([SlideNavigationController sharedInstance].isMenuOpen)
        [[SlideNavigationController sharedInstance] closeMenuWithCompletion:nil];
    else
        [[SlideNavigationController sharedInstance] openMenu:MenuLeft withCompletion:nil];
}

- (IBAction)onRightMenu:(id)sender
{
    if ([SlideNavigationController sharedInstance].isMenuOpen)
        [[SlideNavigationController sharedInstance] closeMenuWithCompletion:nil];
    else
        [[SlideNavigationController sharedInstance] openMenu:MenuRight withCompletion:nil];
    
}

- (void)addBorder:(UIButton *)button
{
    CALayer *btnLayer = [button layer];
    [btnLayer setMasksToBounds:YES];
    [btnLayer setCornerRadius:20.0f];
    btnLayer.borderColor = [UIColor colorWithHexString:@"#00B8F0"].CGColor;
    btnLayer.borderWidth = 1.5f;
    
    [button setTitleColor:[UIColor colorWithHexString:@"#00B8F0"] forState:UIControlStateNormal];

}

- (void)addClearBorder:(UIButton *)button
{
    CALayer *btnLayer = [button layer];
    [btnLayer setMasksToBounds:YES];
    [btnLayer setCornerRadius:20.0f];
    btnLayer.borderColor = [UIColor clearColor].CGColor;
    btnLayer.borderWidth = 1.5f;
    
    [button setTitleColor:[UIColor colorWithHexString:@"#b4c7ce"] forState:UIControlStateNormal];

}

- (void)addLabelBorder:(UILabel *)label
{
    CALayer *btnLayer = [label layer];
    [btnLayer setMasksToBounds:YES];
    [btnLayer setCornerRadius:6.0f];
    btnLayer.borderColor = [UIColor clearColor].CGColor;
    btnLayer.borderWidth = 1.0f;
}

#pragma mark - SlideNavigationControllerDelegate
- (BOOL)slideNavigationControllerShouldDisplayRightMenu
{
    return false;
}

- (BOOL)slideNavigationControllerShouldDisplayLeftMenu
{
    return false;
}

@end
