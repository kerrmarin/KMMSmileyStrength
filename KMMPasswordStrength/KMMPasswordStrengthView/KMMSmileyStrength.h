//
//  KMMPasswordStrength.h
//  KMMPasswordStrength
//
//  Created by Kerr Marin Miller on 29/10/2014.
//  Copyright (c) 2014 Kerr Marin Miller. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KMMSmileyStrength : UIView

@property(nonatomic, strong) UIColor *textColour;
@property(nonatomic, assign) CGFloat textSize;

-(void)evaluatePassword:(NSString*)password;
-(void)evaluatePassword:(NSString*)password userInputs:(NSArray*)userInputs;

@end
