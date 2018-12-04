//
//  ViewController.m
//  PersonInfoModelDemo
//
//  Created by 党玉华 on 2018/12/4.
//  Copyright © 2018年 dangyuhua. All rights reserved.
//

#import "ViewController.h"
#import "PersonInfoModel.h"
#import "SecondVC.h"

@interface ViewController ()

@property(nonatomic,strong)UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(0, 100, self.view.bounds.size.width, 50)];
    btn.tag = 0;
    [self.view addSubview:btn];
    [btn setTitle:@"建立model" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *btn1 = [[UIButton alloc]initWithFrame:CGRectMake(0, 150, self.view.bounds.size.width, 50)];
    btn1.tag = 1;
    [self.view addSubview:btn1];
    [btn1 setTitle:@"进入第二个界面" forState:UIControlStateNormal];
    [btn1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    self.label = [[UILabel alloc]initWithFrame:CGRectMake(0, 250, self.view.bounds.size.width, 150)];
    self.label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:self.label];
    self.label.numberOfLines = 0;
    self.label.text = @"数据模型暂未创建";
    self.label.textColor = [UIColor blackColor];
    
    
    UIButton *btn2 = [[UIButton alloc]initWithFrame:CGRectMake(0, 400, self.view.bounds.size.width, 50)];
    btn2.tag = 2;
    [self.view addSubview:btn2];
    [btn2 setTitle:@"改变班级" forState:UIControlStateNormal];
    [btn2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)btnClick:(UIButton *)btn{
    if (btn.tag==0) {
        [PersonInfoModel setCurrentUser:@{@"name":@"hhhh",@"age":@"18",@"className":@"2班"}];
        self.label.text = [NSString stringWithFormat:@"数据模型已创建\n姓名：%@\n年龄：%@\n班级：%@",[PersonInfoModel currentUser].name,[PersonInfoModel currentUser].age,[PersonInfoModel currentUser].className];
    }else if (btn.tag==1) {
        SecondVC *vc = [[SecondVC alloc]init];
        [self.navigationController pushViewController:vc animated:YES];
    }else{
        [[PersonInfoModel currentUser]setClassName:[NSString stringWithFormat:@"%u班",arc4random()]];
        self.label.text = [NSString stringWithFormat:@"数据模型已创建\n姓名：%@\n年龄：%@\n班级：%@",[PersonInfoModel currentUser].name,[PersonInfoModel currentUser].age,[NSString stringWithFormat:@"%u班",arc4random()]];
    }
}


@end
