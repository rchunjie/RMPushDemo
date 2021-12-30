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
@property (nonatomic,copy,nullable)   void(^selectCallback)(id<RMPushDemoProtocol>);
@end

NS_ASSUME_NONNULL_END
