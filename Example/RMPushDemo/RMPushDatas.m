//
//  RMPushDatas.m
//  RMLog_Example
//
//  Created by 任春节 on 2021/12/30.
//  Copyright © 2021 春节. All rights reserved.
//

#import "RMPushDatas.h"
#import <RMPushDemo/RMPushDemo.h>

@implementation RMPushDatas
+ (NSArray *)getDatas{
    NSMutableArray *datas = [NSMutableArray array];
    [datas addObject:[RMPushDemoModel configVCName:@"" params:@{} showName:@"" showSubTitle:@"退出页面" callBack:^(RMPushDemoModel *_Nonnull item,UIViewController *vc) {
        [vc dismissViewControllerAnimated:YES completion:nil];
    }]];
    [datas addObject:[RMPushDemoModel configVCName:@"" params:@{} showName:@"" showSubTitle:@"插入数据" callBack:^(RMPushDemoModel * _Nonnull item,UIViewController *vc) {
        [self _inserTest];
    }]];
    return datas.copy;
}

+ (void)_inserTest{
   
}

+ (void)_findData{
    
}


@end
