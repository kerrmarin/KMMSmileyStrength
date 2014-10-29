//
//  ViewController.m
//  KMMPasswordStrength
//
//  Created by Kerr Marin Miller on 29/10/2014.
//  Copyright (c) 2014 Kerr Marin Miller. All rights reserved.
//

#import "ViewController.h"
#import "KMMSmileyStrength.h"

@interface ViewController ()

@property(strong, nonatomic) KMMSmileyStrength *smileyStrength;
@property(weak, nonatomic) IBOutlet UITextField *passwordTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Create the password strength view
    CGRect frame = CGRectMake(0, 0, CGRectGetHeight(self.passwordTextField.frame), CGRectGetHeight(self.passwordTextField.frame));
    self.smileyStrength = [[KMMSmileyStrength alloc] initWithFrame:frame];
    //Set it as the text field's right view
    self.passwordTextField.rightView = self.smileyStrength;
    self.passwordTextField.rightViewMode = UITextFieldViewModeNever;
}


-(IBAction)textDidChange:(id)sender {
    UITextField *textfield = sender;
    if(textfield.text.length > 0) {
        [self.smileyStrength evaluatePassword:textfield.text];
        self.passwordTextField.rightViewMode = UITextFieldViewModeAlways;
    } else {
        self.passwordTextField.rightViewMode = UITextFieldViewModeNever;
    }
}

@end
