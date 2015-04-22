//
//  ViewController.m
//  Day23LocalNotification
//
//  Created by tarena on 15-4-12.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    UILocalNotification *noti = [[UILocalNotification alloc]init];
    noti.fireDate = [[NSDate new] dateByAddingTimeInterval:5];
    [noti setRepeatInterval:NSCalendarUnitMinute];
    noti.alertBody = @"大爷 好久没来玩儿了";
    //传递参数
    noti.userInfo = @{@"name": @"小丽"};
//    图标上面的数量
    noti.applicationIconBadgeNumber = 3;
    
    [[UIApplication sharedApplication]scheduleLocalNotification:noti];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
