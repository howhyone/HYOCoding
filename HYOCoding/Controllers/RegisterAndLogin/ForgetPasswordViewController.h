//
//  ForgetPasswordViewController.h
//  HYOCoding
//
//  Created by mob on 2019/4/14.
//  Copyright © 2019年 mob. All rights reserved.
//

#import "RootViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface ForgetPasswordViewController : RootViewController

@property(nonatomic, strong)NSString *userInfo;

+(ForgetPasswordViewController *)VCWithUserinfo:(NSString *)userInfo;

@end

NS_ASSUME_NONNULL_END
