//
//  BaseObjectA.m
//  DesignPatterns
//
//  Created by Jack on 2019/11/4.
//  Copyright © 2019 Jack. All rights reserved.
//

#import "BaseObjectA.h"

@implementation BaseObjectA
 /*
    A1 --> B1、B2、B3         3种
    A2 --> B1、B2、B3         3种
    A3 --> B1、B2、B3         3种
  */
- (void)handle
{
    // override to subclass
    
    [self.objB fetchData];
}
@end
