//
//  NSString+Common.m
//  HYOCoding
//
//  Created by mob on 2019/4/14.
//  Copyright © 2019年 mob. All rights reserved.
//

#import "NSString+Common.h"

@implementation NSString (Common)

-(BOOL)isPhoneNum
{
    NSString *phoneNum = @"[0-8]{1,15}";
    NSPredicate *phonePredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",phoneNum];
    return [phonePredicate evaluateWithObject:phoneNum];
}

@end
