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
#define kLoginPreUserSecret @"pre_user_secret"

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

+(void)setUserEmail:(NSString *)emailStr
{
    if (emailStr.length < 0) {
        return;
    }
    NSUserDefaults *userDefaults = kUserDefaults;
    [userDefaults setObject:emailStr forKey:kLoginPreUserEmail];
    [userDefaults synchronize];
}

+(NSString *)preUserEmail
{
    NSString *preUserEmailStr = [kUserDefaults objectForKey:kLoginPreUserEmail];
    if (preUserEmailStr.length < 0) {
        return nil;
    }
    return preUserEmailStr;
}

+(void)setUserSecret:(NSString *)secretStr
{
    if (secretStr.length < 0) {
        return;
    }
    NSUserDefaults *userDefaults = kUserDefaults;
    [userDefaults setObject:secretStr forKey:kLoginPreUserSecret];
    [userDefaults synchronize];
}

+(NSString *)preUserSecret
{
    NSString *secretStr = [kUserDefaults objectForKey:kLoginPreUserSecret];
    if (secretStr.length < 0) {
        return nil;
    }
    return secretStr;
}
@end
