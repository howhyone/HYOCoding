//
//  ForgetPasswordViewController.m
//  HYOCoding
//
//  Created by mob on 2019/4/14.
//  Copyright © 2019年 mob. All rights reserved.
//

#import "ForgetPasswordViewController.h"

@interface ForgetPasswordViewController ()

@end

@implementation ForgetPasswordViewController
+(ForgetPasswordViewController *)VCWithUserinfo:(NSString *)userInfo
{
    ForgetPasswordViewController *forgetPasswordVC = [ForgetPasswordViewController new];
    
    forgetPasswordVC.userInfo = userInfo;
    
    return forgetPasswordVC;
}
- (void)viewDidLoad {
    
    [super viewDidLoad];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
