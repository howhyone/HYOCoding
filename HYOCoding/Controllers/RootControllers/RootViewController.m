//
//  RootViewController.m
//  HYOCoding
//
//  Created by mob on 2019/3/7.
//  Copyright © 2019年 mob. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

-(BOOL)isLogin
{
    BOOL isLogined = [[NSUserDefaults standardUserDefaults] objectForKey:@"isLogined"];
    return isLogined;
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
