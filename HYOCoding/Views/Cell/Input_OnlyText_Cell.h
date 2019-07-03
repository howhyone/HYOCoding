//
//  Input_OnlyText_Cell.h
//  HYOCoding
//
//  Created by mob on 2019/3/15.
//  Copyright © 2019年 mob. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Input_OnlyText_Cell : UITableViewCell
@property(nonatomic, strong)UITextField *textField;
@property(nonatomic, strong)RACSubject *cellRACSubject;
@property(nonatomic, copy) void(^textValueChangedBlock)(NSString *textStr);
-(void)setPlacehold:(NSString *)placeholdStr withValue:(NSString *)value;

@end

NS_ASSUME_NONNULL_END
