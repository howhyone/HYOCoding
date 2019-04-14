//
//  LoginViewController.m
//  HYOCoding
//
//  Created by mob on 2019/3/9.
//  Copyright © 2019年 mob. All rights reserved.
//

#import "LoginViewController.h"
#import "LoginModel.h"
#import "Input_OnlyText_Cell.h"
@interface LoginViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic, strong)LoginModel *loginM;
@property(nonatomic, strong)UIButton *loginBtn;
@property(nonatomic, strong)TPKeyboardAvoidingTableView *myTableView;
@property(nonatomic, strong)UIView *footView;
@property(nonatomic, strong)UIButton *forgetPasswordBtn;
@property(nonatomic, strong)UIButton *registerBtn;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.loginM = [[LoginModel alloc] init];
    
//    [self.view addSubview:self.myTableView];
//    [_myTableView registerClass:[Input_OnlyText_Cell class] forCellReuseIdentifier:@"Input_OnlyText_Cell"];
    self.myTableView.tableHeaderView = [self customHeaderView];
    self.myTableView.tableFooterView = [self customBottomView];
    
}


#pragma mark -------------- UI布局
-(TPKeyboardAvoidingTableView *)myTableView
{
    if (!_myTableView) {
        _myTableView = ({
            TPKeyboardAvoidingTableView *tableView = [[TPKeyboardAvoidingTableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
//            _myTableView = tableView;
            [tableView registerClass:[Input_OnlyText_Cell class] forCellReuseIdentifier:@"Input_OnlyText_Cell"];
//            tableView.backgroundColor = [UIColor whiteColor];
            tableView.delegate = self;
            tableView.dataSource = self;
            [tableView beginUpdates];
            [self setEditing:YES animated:YES];
            [tableView endUpdates];
            tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
            [self.view addSubview:tableView];
            [tableView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.edges.equalTo(self.view);
            }];
            tableView;
        });
    }
    return  _myTableView;
}

-(UIView *)customHeaderView
{
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kScreen_Width, 110 * kScale_Height)];
    UILabel *headerLabel = [[UILabel alloc] init];
    headerLabel.text = @"登录";
    headerLabel.font = [UIFont systemFontOfSize:24];
    [headerView addSubview:headerLabel];
    [headerLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(headerView.mas_centerY).offset(0);
        make.left.equalTo(headerView.mas_left).offset(0);
    }];
    
    return headerView;
}

-(UIView *)customBottomView
{
    UIView *bottomView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kScale_Width, 110 * kScale_Height)];
    
    [self.view addSubview:bottomView];
    [bottomView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(self->_myTableView.bottom);
        make.height.equalTo(406);
        make.centerX.equalTo(self->_myTableView.centerX);
        make.width.equalTo(kScreen_Width);
        make.bottom.equalTo(self.view.bottom).offset(0);
    }];
    
    _forgetPasswordBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [_forgetPasswordBtn setTitle:@"忘记密码?" forState:UIControlStateNormal];
    [_forgetPasswordBtn addTarget:self action:@selector(forgetPassword) forControlEvents:UIControlEventTouchUpInside];
    [bottomView addSubview:_forgetPasswordBtn];
    [_forgetPasswordBtn makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(bottomView.right).offset(-14);
        make.top.equalTo(bottomView.top).offset(12);
        make.width.equalTo(90*kScale_Width);
        make.height.equalTo(30);
    }];
    
    _loginBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [_loginBtn setTitle:@"登录" forState:UIControlStateNormal];
    [_loginBtn addTarget:self action:@selector(loginApp) forControlEvents:UIControlEventTouchUpInside];
    [_loginBtn setBackgroundColor:[UIColor colorWithRed:109/255 green:156/255 blue:255/255 alpha:1]];
    [bottomView addSubview:_loginBtn];
    [_loginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self->_forgetPasswordBtn.bottom).offset(18);
        make.left.equalTo(self.view.left).offset(18);
        make.right.equalTo(self.view.right).offset(-18);
        make.height.equalTo(50);
    }];
    _registerBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [_registerBtn setTitle:@"注册新账号" forState:UIControlStateNormal];
    [_registerBtn addTarget:self action:@selector(clickRegister) forControlEvents:UIControlEventTouchUpInside];
    [bottomView addSubview:_registerBtn];
    [_registerBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(bottomView.bottom).offset(-18);
        make.centerX.equalTo(bottomView.centerX);
        make.width.equalTo(76*kScale_Width);
        make.height.equalTo(16);
    }];
    return bottomView;
}
-(UIView *)headViewInfo
{
    return self.view;
    
}
#pragma mark - ------- Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    tableView.contentSize = CGSizeMake(kScreen_Width, 65*2);
    return 2;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    Input_OnlyText_Cell *cell = [[Input_OnlyText_Cell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Input_OnlyText_Cell"];
    if (indexPath.row == 0) {
        [cell setPlacehold:@"手机号/邮箱/用户名"  withValue:@""];
    }else if (indexPath.row == 1){
        [cell setPlacehold:@"密码" withColor:[UIColor grayColor]];
    }
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 65;
}

#pragma mark ------- 点击事件
-(void)forgetPassword
{
    
}

-(void)loginApp
{
    
}

-(void)clickRegister
{
    
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
