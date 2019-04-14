//
//  UILabel+Common.m
//  HYOCoding
//
//  Created by mob on 2019/3/15.
//  Copyright © 2019年 mob. All rights reserved.
//

#import "UILabel+Common.h"

@implementation UILabel (Common)
+(instancetype)labelWithFont:(UIFont *)fontSize textColor:(UIColor*)textColor
{
    UILabel *label = [self new];
    label.font = fontSize;
    label.textColor = textColor;
    return label;
}
@end
