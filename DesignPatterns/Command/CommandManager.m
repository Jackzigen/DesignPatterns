//
//  CommandManager.m
//  DesignPatterns
//
//  Created by Jack on 2019/11/4.
//  Copyright © 2019 Jack. All rights reserved.
//

#import "CommandManager.h"

@implementation CommandManager

+ (instancetype)sharedInstance
{
    static CommandManager *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[super allocWithZone:NULL] init];
    });
    return instance;
}

+ (id)allocWithZone:(struct _NSZone *)zone{
    return [self sharedInstance];
}

// 通过Copy创建进来也一样
- (id)copyWithZone:(nullable NSZone *)zone{
    return self;
}

// 初始化方法
- (id)init
{
    self = [super init];
    if (self) {
        // 初始化命令容器
        _arrayCommands = [NSMutableArray array];
    }
    return self;
}


+ (void)executeCommand:(Command *)cmd completion:(CommandCompletionCallBack)completion
{
    if (cmd) {
        // 如果命令正在执行不做处理，否则添加并执行命令
        if (![self _isExecutingCommand:cmd]) {
            // 添加到命令容器当中
            [[[self sharedInstance] arrayCommands] addObject:cmd];
            // 设置命令执行完成的回调
            cmd.completion = completion;
            //执行命令
            [cmd execute];
        }
    }
}


// 取消命令
+ (void)cancelCommand:(Command *)cmd
{
    if (cmd) {
        // 从命令容器当中移除
        [[[self sharedInstance] arrayCommands] removeObject:cmd];
        // 取消命令执行
        [cmd cancel];
    }
}

// 判断当前命令是否正在执行
+ (BOOL)_isExecutingCommand:(Command *)cmd
{
    if (cmd) {
        NSArray *cmds = [[self sharedInstance] arrayCommands];
        for (Command *aCmd in cmds) {
            // 当前命令正在执行
            if (cmd == aCmd) {
                return YES;
            }
        }
    }
    return NO;
}

@end
