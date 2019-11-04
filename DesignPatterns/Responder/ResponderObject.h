//
//  ResponderObject.h
//  DesignPatterns
//
//  Created by Jack on 2019/11/4.
//  Copyright © 2019 Jack. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class ResponderObject;
typedef void(^CompletionBlock)(BOOL handled);
typedef void(^ResultBlock)(ResponderObject *handler, BOOL handled);

@interface ResponderObject : NSObject

// 下一个响应者(响应链构成的关键)
@property (nonatomic, strong) ResponderObject *nextBusiness;
// 响应者的处理方法
- (void)handle:(ResultBlock)result;

// 各个业务在该方法当中做实际业务处理
- (void)handleBusiness:(CompletionBlock)completion;

@end

NS_ASSUME_NONNULL_END
