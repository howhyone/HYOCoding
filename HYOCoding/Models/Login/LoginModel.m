//
//  LoginModel.m
//  HYOCoding
//
//  Created by mob on 2019/3/15.
//  Copyright © 2019年 mob. All rights reserved.
//

#import "LoginModel.h"
#import "User.h"

#define kLoginStatus @"login_status"
#define kUserDefaults [NSUserDefaults standardUserDefaults]
#define kLoginPreUserEmail @"pre_user_email"

static User *curLoginUser;

@implementation LoginModel

+(BOOL)isLogin
{
    BOOL isLoginB = true;
    return isLoginB;
}
+(void)doLogout
{
    [UIApplication sharedApplication].applicationIconBadgeNumber = 0;
    NSUserDefaults *userDefaults = kUserDefaults;
    [userDefaults setBool:NO forKey:kLoginStatus];
    [userDefaults synchronize];
    NSArray *cookies = [[NSHTTPCookieStorage sharedHTTPCookieStorage] cookies];
    [cookies enumerateObjectsUsingBlock:^(NSHTTPCookie*  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([obj.domain hasSuffix:@".coding.net"]) {
            [[NSHTTPCookieStorage sharedHTTPCookieStorage] deleteCookie:obj];
        }
    }];
}
+(NSString *)preUserEmail
{
    
    NSString *preUserEmailStr = [kUserDefaults objectForKey:kLoginPreUserEmail];
    return preUserEmailStr;
}
@end
