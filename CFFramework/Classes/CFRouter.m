//
//  CFRouter.m
//  CFBase
//
//  Created by chen on 2018/6/1.
//

#import "CFRouter.h"

@implementation CFRouter

+ (instancetype)shareInstance
{
    static CFRouter *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [CFRouter new];
    });
    
    return instance;
}

- (int)getMaxCountWithA:(int)a andB:(int)b
{
    return a>b?a:b;
}
@end
