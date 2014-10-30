KMMSmileyStrength
=================

## Preview

## Features

## Installation

### Cocoapods(Recommended)

1. Add `pod 'KMMSmileyStrength` to your Podfile.
2. Run `pod install`

### Manual


## Requirements

- iOS 5.0 and greater
- ARC

## Examples

**Code:**

```objc

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Create the password strength view
    CGRect frame = CGRectMake(0, 0, CGRectGetHeight(self.passwordTextField.frame), CGRectGetHeight(self.passwordTextField.frame));
    self.smileyStrength = [[KMMSmileyStrength alloc] initWithFrame:frame];
    //Set it as the text field's right view
    self.passwordTextField.rightView = self.smileyStrength;
    self.passwordTextField.rightViewMode = UITextFieldViewModeNever;
}

/**
 *  Called when the text field's editing changed
 *
 *  @param sender the UITextField for the password
 */
-(IBAction)textDidChange:(id)sender {
    UITextField *textfield = sender;
    if(textfield.text.length > 0) {
        [self.smileyStrength evaluatePassword:textfield.text];
        self.passwordTextField.rightViewMode = UITextFieldViewModeAlways;
    } else {
        self.passwordTextField.rightViewMode = UITextFieldViewModeNever;
    }
}


```

You can also edit the text colour and text size of the KMMSmileySrength:

```objc

    //Create the password strength view
    CGRect frame = CGRectMake(0, 0, CGRectGetHeight(self.passwordTextField.frame), CGRectGetHeight(self.passwordTextField.frame));
    self.smileyStrength = [[KMMSmileyStrength alloc] initWithFrame:frame];
    //Set a custom colour and text size
    self.smileyStrength.textColour = [UIColor blueColor];
    self.smileyStrength.textSize = 30.f;

```


## Credits

KMMSmileyStrength was created by Kerr Marin Miller (@kerrmarin) in the development of Dejavu (www.dejavu-app.com)

## License

KMMSmileyStrength is available under the MIT license. See the LICENSE file for more info.
