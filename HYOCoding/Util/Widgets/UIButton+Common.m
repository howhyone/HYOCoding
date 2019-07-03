//
//  UIButton+Common.m
//  HYOCoding
//
//  Created by mob on 2019/7/2.
//  Copyright © 2019 mob. All rights reserved.
//

#import "UIButton+Common.h"

@implementation UIButton (Common)

- (UIImage *)buttonImageFromColor:(UIColor *)color
{
    CGRect rect = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
