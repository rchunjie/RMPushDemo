//
//  RMPushDemoProtocol.h
//  RMPushDemo
//
//  Created by 任春节 on 2021/12/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol RMPushDemoProtocol <NSObject>
/// 控制器名称
@property(nonatomic,copy)    NSString *vcsName;
/// 参数
@property(nonatomic,strong)  NSDictionary *params;
/// 拓展参数
@property(nonatomic,strong)  id expand;
/// 展示名
@property (nonatomic,copy)   NSString *showName;
/// 展示详情
@property (nonatomic,copy)   NSString *showSubTitle;
/// swift 必须实现
@property (nonatomic,copy)   NSString *bundleExecutable;

/// 选中回调 如果定义 在这构建数据自己进行处理
@property (nonatomic,copy,nullable)   void(^selectCallback)(id<RMPushDemoProtocol>,UIViewController *);
/// title样式
- (NSAttributedString *)showCellTitle;
/// 详情样式
- (NSAttributedString *)showCellDetailsTitle;

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
                    callBack:(void(^ _Nullable)(id<RMPushDemoProtocol>,UIViewController *))callBack;

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
                    callBack:(void(^ _Nullable)(id<RMPushDemoProtocol>,UIViewController *))callBack;

@end

NS_ASSUME_NONNULL_END
