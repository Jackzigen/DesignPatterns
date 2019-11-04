//
//  Command.m
//  DesignPatterns
//
//  Created by Jack on 2019/11/4.
//  Copyright © 2019 Jack. All rights reserved.
//

#import "Command.h"
#import "CommandManager.h"
@implementation Command

- (void)execute {
    //在子类中重写
}

- (void)cancel {
    self.completion = nil;
}

- (void)done {
    dispatch_async(dispatch_get_main_queue(), ^{
        
        if (_completion) {
            _completion(self);
        }
        
        //释放
        self.completion = nil;
        
        [[CommandManager sharedInstance].arrayCommands removeObject:self];
        
    });
}

@end
