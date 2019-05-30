//
//  ViewController.m
//  LoginInterface
//
//  Created by Civet on 2019/5/21.
//  Copyright © 2019年 PandaTest. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //用户名提示标签创建
    _lbUserName = [[UILabel alloc] init];
    _lbUserName.frame = CGRectMake(20, 60, 80, 40);
    _lbUserName.text = @"用户名";
    _lbUserName.font = [UIFont systemFontOfSize:20];
    _lbUserName.textAlignment = NSTextAlignmentLeft;
    //密码提示
    //用户名提示标签创建
    _lbPassword = [[UILabel alloc] init];
    _lbPassword.frame = CGRectMake(20, 140, 80, 40);
    _lbPassword.text = @"密码";
    _lbPassword.font = [UIFont systemFontOfSize:20];
    _lbPassword.textAlignment = NSTextAlignmentLeft;
    //输入用户名称
    _tfUserName = [[UITextField alloc] init];
    _tfUserName.frame = CGRectMake(120, 60, 180, 40);
    _tfUserName.placeholder = @"请输入用户名：";
    _tfUserName.borderStyle = UITextBorderStyleRoundedRect;
    
    //密码输入框
    _tfPassword = [[UITextField alloc] init];
    _tfPassword.frame = CGRectMake(120, 140, 180, 40);
    _tfPassword.placeholder = @"请输入密码";
    _tfPassword.borderStyle = UITextBorderStyleRoundedRect;
    _tfPassword.secureTextEntry = YES;
    
    //登录和注册btn
    _btLogin = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btLogin.frame = CGRectMake(120, 300, 80, 40);
    [_btLogin setTitle:@"登录" forState:UIControlStateNormal];
    [_btLogin addTarget:self action:@selector(pressLogin) forControlEvents:UIControlEventTouchUpInside];
    
    _btregister = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btregister.frame = CGRectMake(220, 300, 80, 40);
    [_btregister setTitle:@"注册" forState:UIControlStateNormal];
    [_btregister addTarget:self action:@selector(pressRegister) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_lbUserName];
    [self.view addSubview:_lbPassword];
    [self.view addSubview:_tfUserName];
    [self.view addSubview:_tfPassword];
    [self.view addSubview:_btLogin];
    [self.view addSubview: _btregister];
    
}
//登录事件
- (void)pressLogin{
    NSString *strName = @"jack";
    NSString *strPass = @"123";
    //获取输入框内容
    NSString *strTexName = _tfUserName.text;
    NSString *strTexPass = _tfPassword.text;
    if ([strName isEqualToString:strTexName] && [strPass isEqualToString:strTexPass]){
        NSLog(@"用户名密码正确");
        UIAlertView *alView = [[UIAlertView alloc] initWithTitle:@"提示" message:@"登录成功" delegate:nil cancelButtonTitle:@"确认" otherButtonTitles: nil];
        [alView show];
    }else{
        UIAlertView *alView = [[UIAlertView alloc] initWithTitle:@"提示" message:@"登录失败" delegate:nil cancelButtonTitle:@"确认" otherButtonTitles: nil];
        [alView show];
    }
}
//注册对象
- (void)pressRegister{
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
