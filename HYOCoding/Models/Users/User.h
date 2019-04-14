//
//  User.h
//  HYOCoding
//
//  Created by mob on 2019/3/15.
//  Copyright © 2019年 mob. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface User : NSObject


@property(nonatomic, strong)NSDictionary *propertyArrayMap;
@property (readwrite, nonatomic, strong) NSString *avatar, *name, *global_key, *path, *slogan, *company, *tags_str, *tags, *location, *job_str, *email, *birthday, *pinyinName;

@end

NS_ASSUME_NONNULL_END
