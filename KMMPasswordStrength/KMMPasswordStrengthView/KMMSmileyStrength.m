//
//  KMMPasswordStrength.m
//  KMMPasswordStrength
//
//  Created by Kerr Marin Miller on 29/10/2014.
//  Copyright (c) 2014 Kerr Marin Miller. All rights reserved.
//

#import "KMMSmileyStrength.h"

#import "DBZxcvbn.h"
#import "UIFont+kmm_smileyFont.h"
#import "NSString+kmm_smileys.h"

@interface KMMSmileyStrength ()

@property(nonatomic, strong) UILabel *textLabel;
@property(nonatomic, strong) DBZxcvbn *zxcvbn;

@end

@implementation KMMSmileyStrength

-(id)init
{
    return [self initWithFrame:CGRectMake(0.0, 0.0, 30.0, 30.0)];
}

-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

/**
 * Sets up the zxcvbn password strength tool and the label
 * that will have the password strength text
 */
-(void)setup {
    self.zxcvbn = [[DBZxcvbn alloc] init];
    self.textLabel = [[UILabel alloc] initWithFrame:self.bounds];
    
    //Set default values for font, size and text colour
    self.textLabel.font = [UIFont kmm_flatIconFont];
    self.textLabel.textColor = [UIColor blackColor];
    self.textLabel.textAlignment = NSTextAlignmentCenter;
    
    [self addSubview: self.textLabel];
}

/**
 *  Evaluates the strength of a password
 *
 *  @param password the password to be evaluated
 */
-(void)evaluatePassword:(NSString *)password {
    [self evaluatePassword:password userInputs:nil];
}

/**
 *  Evaluates the strength of a password also taking into account a set
 *  of user inputs.
 *
 *  @param password   the password to be evaluated
 *  @param userInputs a set of optional strings to add to the zxcvbn dictionary
 *         to improve security (common strings to add are usernames, emails, etc)
 */
-(void)evaluatePassword:(NSString *)password userInputs:(NSArray *)userInputs {
    DBResult *result = [self.zxcvbn passwordStrength:password
                                          userInputs:userInputs];
    self.textLabel.text = [NSString kmm_smileyForFlatIconFontEmotion:result.score];
}

/**
 *  Sets the size of the label containing the text for the smiley
 *
 *  @param textSize the new text size for the smiley
 */
-(void)setTextSize:(CGFloat)textSize {
    if(_textSize == textSize) return;
    self.textLabel.font = [UIFont fontWithName:self.textLabel.font.fontName size:textSize];
    _textSize = textSize;
}

/**
 *  Sets the colour of the font
 *
 *  @param textColour the new text colour
 */
-(void)setTextColour:(UIColor *)textColour {
    if(_textColour == textColour) return;
    self.textLabel.textColor = textColour;
    _textColour = textColour;
}

@end
