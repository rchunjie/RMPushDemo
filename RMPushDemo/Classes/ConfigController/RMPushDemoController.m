//
//  TJPushDemoController.m
//  TJInsuranceAcceptance_Example
//
//  Created by 任春节 on 2021/11/9.
//  Copyright © 2021 rencj. All rights reserved.
//

#import "RMPushDemoController.h"
#import <Masonry/Masonry.h>
#import "RMPushDemoModel+cellStyle.h"
#import <objc/message.h>
#import "UIView+RMCategory.h"

NSString * UITableViewCell_Identifier = @"UITableViewCell_Identifier";

@interface RMPushDemoController ()<UITableViewDelegate,UITableViewDataSource>
/// 显示
@property(nonatomic,strong)  UITableView *tableView;
@end

@implementation RMPushDemoController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupView];
    [self setupData];
}
/// 布局
- (void)setupView{
    [self.view addSubview:({
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:(UITableViewStylePlain)];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView;
    })];
    [_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(@0);
        make.top.mas_equalTo(@(self.view.navBarHighly));
        make.bottom.mas_equalTo(self.mas_bottomLayoutGuideTop);
    }];
}

- (void)setupData{
    [self.tableView reloadData];
}

- (void)setDataSource:(NSArray<RMPushDemoModel *> *)dataSource{
    _dataSource = dataSource;
    [self setupData];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:UITableViewCell_Identifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:(UITableViewCellStyleSubtitle) reuseIdentifier:UITableViewCell_Identifier];
    }
    RMPushDemoModel *item = self.dataSource[indexPath.row];
    cell.textLabel.attributedText = [item showCellTitle];
    cell.detailTextLabel.attributedText = [item showCellDetailsTitle];
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    id <RMPushDemoProtocol>item = self.dataSource[indexPath.row];
    if (item.showName.length <= 0) return;
    if (item.selectCallback != nil) {
        item.selectCallback(item);
        return;
    }
    Class vcsClass = NSClassFromString(item.vcsName);
    UIViewController * vc = [[vcsClass alloc] init];
    if (item.params.allKeys.count > 0) {
        [vc setValuesForKeysWithDictionary:item.params];
    }
    if (!vc) return;
    if (self.navigationController) {
        [self.navigationController pushViewController:vc animated:YES];
    }else{
        [self presentViewController:vc animated:YES completion:nil];
    }
}

- (void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
}

@end
