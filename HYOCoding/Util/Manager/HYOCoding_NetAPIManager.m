//
//  HYOCoding_NetAPIManager.m
//  HYOCoding
//
//  Created by mob on 2019/5/21.
//  Copyright © 2019 mob. All rights reserved.
//

#import "HYOCoding_NetAPIManager.h"

@implementation HYOCoding_NetAPIManager

+(instancetype)sharedManager
{
    static HYOCoding_NetAPIManager *shared_manager = nil;
    static dispatch_once_t shared_Token;
    dispatch_once(&shared_Token, ^{
        shared_manager = [[self alloc] init];
    });
    return shared_manager;
}


-(void)request_Login_WithPath:(NSString *)path Params:(id)params andBlock:(void (^)(id _Nonnull, NSError * _Nonnull))block
{
    
}


@end
