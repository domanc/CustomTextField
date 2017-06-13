//
//  ViewController.m
//  CustomTextField
//
//  Created by Doman on 2017/6/13.
//  Copyright © 2017年 Doman. All rights reserved.
//

#import "ViewController.h"
#import "CustomTextField.h"

@interface ViewController ()
{
    CustomTextField *TFOne;
    CustomTextField *TFTwo;
    CustomTextField *TFThree;

}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //固定4个进行分隔
    TFOne = [[CustomTextField alloc]initWithFrame:CGRectMake(20, 100, 300, 50) withPlaceHolder:@"请输入银行卡号" withSeparateCount:4];
    TFOne.limitCount = 19;//可以不设置，但是那样的话，就可以无限输入了
    TFOne.layer.cornerRadius = 4.0;
    TFOne.layer.borderColor = [UIColor lightGrayColor].CGColor;
    TFOne.layer.borderWidth = 2.0;
    [self.view addSubview:TFOne];
    
    
    //按照数组中的进行分隔，假如分隔电话号码@[@"3",@"4",@"4"]即可
    TFTwo = [[CustomTextField alloc]initWithFrame:CGRectMake(20, 200, 300, 50) withPlaceHolder:@"请输入电话号码" withSeparateArray:@[@"3",@"4",@"4"]];
    TFTwo.limitCount = 11;//可以不设置，但是那样的话，就可以无限输入了
    TFTwo.layer.cornerRadius = 4.0;
    TFTwo.layer.borderColor = [UIColor lightGrayColor].CGColor;
    TFTwo.layer.borderWidth = 2.0;
    [self.view addSubview:TFTwo];
    
    
    //输入身份证号
    TFThree = [[CustomTextField alloc]initWithFrame:CGRectMake(20, 300, 300, 50) withPlaceHolder:@"请输入身份证号" withSeparateArray:@[@"6",@"8",@"4"]];
    TFThree.limitCount = 18;//可以不设置，但是那样的话，就可以无限输入了
    TFThree.layer.cornerRadius = 4.0;
    TFThree.layer.borderColor = [UIColor lightGrayColor].CGColor;
    TFThree.layer.borderWidth = 2.0;
    [self.view addSubview:TFThree];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"实际输入银行卡内容:%@",TFOne.userInputContent);
    
    NSLog(@"实际输入电话内容:%@",TFTwo.userInputContent);
    
    NSLog(@"实际输入身份证号内容:%@",TFThree.userInputContent);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
