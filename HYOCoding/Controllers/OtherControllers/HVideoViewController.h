//
//  HVideoViewController.h
//  HYOCoding
//
//  Created by mob on 2019/3/7.
//  Copyright © 2019年 mob. All rights reserved.
//

#import "RootViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface HVideoViewController : RootViewController
@property(nonatomic, strong)NSURL *videoURL;
@property(nonatomic, strong)UIViewController *videoVC;
@end

NS_ASSUME_NONNULL_END
