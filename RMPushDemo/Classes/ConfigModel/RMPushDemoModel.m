//
//  TJPushDemoModel.m
//  TJInsuranceAcceptance_Example
//
//  Created by 任春节 on 2021/11/9.
//  Copyright © 2021 rencj. All rights reserved.
//

#import "RMPushDemoModel.h"
#import "RMMacroDefinition.h"

@implementation RMPushDemoModel
/// 配置项目
/// @param name 继承 TJBaseController 控制器文件名
/// @param params 参数
/// @param showName 显示信息
/// @param showSubTitle 显示详情
/// @param callBack 是否需要回调 自己处理跳转任务
+ (instancetype)configVCName:(NSString *)name
                      params:(NSDictionary *)params
                    showName:(NSString *)showName
                showSubTitle:(NSString *)showSubTitle
                    callBack:(void(^_Nullable)(RMPushDemoModel *,UIViewController *))callBack{
    RMPushDemoModel *item = [[RMPushDemoModel alloc] init];
    item.vcsName = name;
    item.params = params;
    item.showName = showName;
    item.showSubTitle = showSubTitle;
    item.selectCallback = callBack;
    return item;
}
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
                    callBack:(void(^ _Nullable)(RMPushDemoModel *,UIViewController *))callBack{
    RMPushDemoModel *item = [RMPushDemoModel configVCName:name params:params showName:showName showSubTitle:showSubTitle callBack:callBack];
    item.bundleExecutable = bundleExecutable;
    return item;
}

- (NSString *)vcsName{
    if (self.bundleExecutable.length > 0) {
        return [NSString stringWithFormat:@"%@.%@",_bundleExecutable,_vcsName];
    }
    return self.vcsName;
}

- (NSAttributedString *)getCellTitleStyle{
    NSString *title = kRMMakeSureString(_showName).length > 0?_showName:_vcsName;
    return [[NSAttributedString alloc] initWithString:title attributes:@{
        NSFontAttributeName:[UIFont boldSystemFontOfSize:14],
        NSForegroundColorAttributeName:UIColor.blackColor
    }];
}

- (NSAttributedString *)getCellDetailsTitle{
    NSString *details = kRMMakeSureString(_showSubTitle).length > 0 ?_showSubTitle:@"";
    return [[NSAttributedString alloc] initWithString:details attributes:@{
        NSFontAttributeName:[UIFont systemFontOfSize:12],
        NSForegroundColorAttributeName:UIColor.grayColor
    }];
}

@end
