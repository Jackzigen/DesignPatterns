//
//  CommandManager.h
//  DesignPatterns
//
//  Created by Jack on 2019/11/4.
//  Copyright © 2019 Jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"
NS_ASSUME_NONNULL_BEGIN

@interface CommandManager : NSObject
//命令管理容器
@property (nonatomic, strong) NSMutableArray <Command*> *arrayCommands;

+ (instancetype)sharedInstance;

//执行命令
+ (void)executeCommand:(Command *)cmd completion:(CommandCompletionCallBack)completion;

//取消命令
+ (void)cancelCommand:(Command *)cmd;

@end

NS_ASSUME_NONNULL_END
