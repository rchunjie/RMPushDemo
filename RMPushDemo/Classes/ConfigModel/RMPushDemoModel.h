//
//  TJPushDemoModel.h
//  TJInsuranceAcceptance_Example
//
//  Created by 任春节 on 2021/11/9.
//  Copyright © 2021 rencj. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RMPushDemoProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface RMPushDemoModel : NSObject<RMPushDemoProtocol>



/// 配置项目
/// @param name 继承 TJBaseController 控制器文件名 不可空
/// @param params 参数 可空
/// @param showName 显示信息 可空
/// @param showSubTitle 显示详情 可空
/// @param callBack 是否需要回调 自己处理跳转任务 可空
+ (instancetype)configVCName:(NSString *)name
                      params:(NSDictionary *)params
                    showName:(NSString *)showName
                showSubTitle:(NSString *)showSubTitle
                    callBack:(void(^ _Nullable)(id <RMPushDemoProtocol>))callBack;

/// 配置项目
/// @param name 继承 TJBaseController 控制器文件名 不可空
/// @param params 参数 可空
/// @param showName 显示信息 可空
/// @param bundleExecutable 包名
/// @param showSubTitle 显示详情 可空
/// @param callBack 是否需要回调 自己处理跳转任务 可空
+ (instancetype)configVCName:(NSString *)name
                      params:(NSDictionary *)params
                    showName:(NSString *)showName
            bundleExecutable:(NSString *)bundleExecutable
                showSubTitle:(NSString *)showSubTitle
                    callBack:(void(^ _Nullable)(id <RMPushDemoProtocol>))callBack;


@end

NS_ASSUME_NONNULL_END
