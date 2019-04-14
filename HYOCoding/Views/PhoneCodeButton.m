//
//  PhoneCodeButton.m
//  HYOCoding
//
//  Created by mob on 2019/3/15.
//  Copyright © 2019年 mob. All rights reserved.
//

#import "PhoneCodeButton.h"

@implementation PhoneCodeButton

-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.titleLabel.font = [UIFont systemFontOfSize:15];
        self.enabled = YES;
    }
    return self;
}

-(void)setEnabled:(BOOL)enabled
{
    [super setEnabled:enabled];
    UIColor *foreColor = enabled? kColorDark2: kColorDarkA;
    [self setTitleColor:foreColor forState:UIControlStateNormal];
    if (enabled) {
        [self setTitle:@"发送验证码" forState:UIControlStateNormal];
    }
    else if ([self.titleLabel.text isEqualToString:@"发送验证码"])
    {
        [self setTitle:@"正在发送..." forState:UIControlStateNormal];
    }
}
@end
