//
//  RMMacroDefinition.h
//  iOSShard
//
//  Created by 任春节 on 2021/12/4.
//

#import <Foundation/Foundation.h>

#define kRMMakeSureString(str) ([str isKindOfClass:[NSString class]]? (NSString *)str : \
([str respondsToSelector:@selector(stringValue)] ? [(id)str  stringValue] : @""))

#define kRMFont(size)        [UIFont systemFontOfSize:size]
