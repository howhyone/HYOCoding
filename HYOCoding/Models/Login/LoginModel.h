//
//  LoginModel.h
//  HYOCoding
//
//  Created by mob on 2019/3/15.
//  Copyright © 2019年 mob. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LoginModel : NSObject
@property(nonatomic, strong)NSString* phoneNumStr,*emailStr;
@property(nonatomic, strong) NSString *codeStr;

+(BOOL) isLogin;
+(void)doLogout;
+(NSString *)preUserEmail;

@end

NS_ASSUME_NONNULL_END
