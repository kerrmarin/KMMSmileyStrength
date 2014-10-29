//
//  UIFont+kmm_smileyFont.m
//  KMMPasswordStrength
//
//  Created by Kerr Marin Miller on 29/10/2014.
//  Copyright (c) 2014 Kerr Marin Miller. All rights reserved.
//

#import "UIFont+kmm_smileyFont.h"

@implementation UIFont (kmm_smileyFont)

+(UIFont *)kmm_flatIconFont {
    return [UIFont fontWithName:@"flaticon" size:20.f];
}

+(UIFont *)kmm_flatIconFontWithSize:(CGFloat)size {
    return [UIFont fontWithName:@"flaticon" size:size];
}

@end
