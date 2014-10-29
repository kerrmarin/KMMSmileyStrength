//
//  NSString+kmm_smileys.m
//  KMMPasswordStrength
//
//  Created by Kerr Marin Miller on 29/10/2014.
//  Copyright (c) 2014 Kerr Marin Miller. All rights reserved.
//

#import "NSString+kmm_smileys.h"

typedef NS_ENUM(NSInteger, FlatIconFontEmotion) {
    FlatIconFontEmotionVerySad = 0,
    FlatIconFontEmotionSad,
    FlatIconFontEmotionIndifferent,
    FlatIconFontEmotionHappy,
    FlatIconFontEmotionVeryHappy
};

@implementation NSString (kmm_smileys)

+(NSString*)kmm_smileyForFlatIconFontEmotion:(NSInteger)emotion {
    switch (emotion) {
        case FlatIconFontEmotionVerySad:
            return [NSString stringWithUTF8String:"\ue001"];
            break;
        case FlatIconFontEmotionSad:
            return [NSString stringWithUTF8String:"\ue002"];
            break;
        case FlatIconFontEmotionIndifferent:
            return [NSString stringWithUTF8String:"\ue000"];
            break;
        case FlatIconFontEmotionHappy:
            return [NSString stringWithUTF8String:"\ue004"];
            break;
        case FlatIconFontEmotionVeryHappy:
            return [NSString stringWithUTF8String:"\ue003"];
            break;
        default:
            return @"";
            break;
    }
}

@end
