//
//  Input_OnlyText_Cell.m
//  HYOCoding
//
//  Created by mob on 2019/3/15.
//  Copyright © 2019年 mob. All rights reserved.
//

#import "Input_OnlyText_Cell.h"

@implementation Input_OnlyText_Cell

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.backgroundColor = [UIColor whiteColor];
        if (!_textField) {
            _textField = [[UITextField alloc] initWithFrame:CGRectMake(18, 0, kScreen_Width - 18, 50)];
            [_textField setFont:[UIFont systemFontOfSize:15]];
            [_textField addTarget:self action:@selector(editDidBegin:) forControlEvents:UIControlEventEditingDidBegin];
            [_textField addTarget:self action:@selector(textValueChanged:) forControlEvents:UIControlEventEditingChanged];
            [_textField addTarget:self action:@selector(editDidEnd:) forControlEvents:UIControlEventEditingDidEnd];
            [self addSubview:_textField];
            [_textField mas_makeConstraints:^(MASConstraintMaker *make) {
                make.centerY.equalTo(self.mas_centerY).offset(0);
                make.left.equalTo(self.mas_left).offset(18);
                make.right.equalTo(self.mas_right).offset(-18);
                make.height.mas_equalTo(20);
            }];
        }
        UIView *lineView = [[UIView alloc] init];
        [self addSubview:lineView];
        [lineView setBackgroundColor:[UIColor lightGrayColor]];
        [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(self.mas_bottom);
            make.height.mas_equalTo(1);
            make.left.equalTo(self.mas_left).offset(18);
            make.right.equalTo(self.mas_right).offset(-18);
        }];
       
    }
    return self;
}

-(void)editDidBegin:(UITextField *)textField
{
    
}

-(void)textValueChanged:(UITextField *)textField
{
    
}

-(void)editDidEnd:(UITextField *)textField
{
    
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}


-(void)setPlacehold:(NSString *)placeholdStr withValue:(NSString *)value
{
    _textField.attributedPlaceholder = [[NSAttributedString alloc] initWithString:placeholdStr attributes:@{NSForegroundColorAttributeName:kColorDark2}];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
