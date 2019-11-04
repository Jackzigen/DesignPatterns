//
//  Adapter.h
//  DesignPatterns
//
//  Created by Jack on 2019/11/4.
//  Copyright © 2019 Jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BeAdapter.h"
NS_ASSUME_NONNULL_BEGIN
// 适配对象
@interface Adapter : NSObject

// 被适配对象
@property (nonatomic, strong) BeAdapter *beAdapter;

// 对原有方法包装
- (void)request;
@end

NS_ASSUME_NONNULL_END
