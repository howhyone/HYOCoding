//
//  PhoneCodeButton.h
//  HYOCoding
//
//  Created by mob on 2019/3/15.
//  Copyright © 2019年 mob. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PhoneCodeButton : UIButton
-(void)startUpTimer;
-(void)invalidateTimer;
@end

NS_ASSUME_NONNULL_END
