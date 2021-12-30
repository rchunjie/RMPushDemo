//
//  RMPushDemoController.h
//  TJInsuranceAcceptance_Example
//
//  Created by 任春节 on 2021/11/9.
//  Copyright © 2021 rencj. All rights reserved.
//

#import <UIKit/UIKit.h>


NS_ASSUME_NONNULL_BEGIN
@class RMPushDemoModel;
@interface RMPushDemoController : UIViewController
/// 数据源
@property(nonatomic,strong)  NSArray <RMPushDemoModel *>*dataSource;
@end

NS_ASSUME_NONNULL_END
