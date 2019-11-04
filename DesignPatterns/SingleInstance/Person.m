//
//  Person.m
//  DesignPatterns
//
//  Created by Jack on 2019/11/3.
//  Copyright © 2019 Jack. All rights reserved.
//

#import "Person.h"

@implementation Person

+ (instancetype) sharedInstance {
    
    static Person *_sharedInstance = nil;
    // 确保在多线程下只创建一次
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[super allocWithZone:NULL] init];
    });
    
    return _sharedInstance;
}

+ (id)allocWithZone:(struct _NSZone *)zone {
    return [self sharedInstance];
}

// 通过Copy创建进来也一样
- (id)copyWithZone:(nullable NSZone *)zone {
    return self;
}

@end
