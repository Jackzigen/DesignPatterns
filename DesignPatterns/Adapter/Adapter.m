//
//  Adapter.m
//  DesignPatterns
//
//  Created by Jack on 2019/11/4.
//  Copyright © 2019 Jack. All rights reserved.
//

#import "Adapter.h"

@implementation Adapter

- (void)request
{
    // 额外处理
    
    [self.beAdapter operation];
    
    // 额外处理
}

@end
