//
//  SecondVC.m
//  PersonInfoModelDemo
//
//  Created by 党玉华 on 2018/12/4.
//  Copyright © 2018年 dangyuhua. All rights reserved.
//

#import "SecondVC.h"
#import "PersonInfoModel.h"

@interface SecondVC ()

@end

@implementation SecondVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 100, self.view.bounds.size.width, 300)];
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    label.numberOfLines = 0;
    label.text = [NSString stringWithFormat:@"数据模型已创建\n姓名：%@\n年龄：%@\n班级：%@",[PersonInfoModel currentUser].name,[PersonInfoModel currentUser].age,[PersonInfoModel currentUser].className];
    label.textColor = [UIColor blackColor];
}

@end
