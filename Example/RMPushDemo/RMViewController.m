//
//  RMViewController.m
//  RMPushDemo
//
//  Created by rencj on 12/30/2021.
//  Copyright (c) 2021 rencj. All rights reserved.
//

#import "RMViewController.h"
#import <RMPushDemo/RMPushDemo.h>
#import "RMPushDatas.h"

@interface RMViewController ()

@end

@implementation RMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    RMPushDemoController *push = [[RMPushDemoController alloc] init];
    push.dataSource = [RMPushDatas getDatas];
    [self addChildViewController:push];
    [self.view addSubview:push.view];
    [push removeFromParentViewController];
    push.view.frame = self.view.bounds;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
