//
//  BaseObjectA.h
//  DesignPatterns
//
//  Created by Jack on 2019/11/4.
//  Copyright © 2019 Jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseObjectB.h"
NS_ASSUME_NONNULL_BEGIN

@interface BaseObjectA : NSObject
// 桥接模式的核心实现
@property (nonatomic, strong) BaseObjectB *objB;

// 获取数据
- (void)handle;

@end

NS_ASSUME_NONNULL_END
