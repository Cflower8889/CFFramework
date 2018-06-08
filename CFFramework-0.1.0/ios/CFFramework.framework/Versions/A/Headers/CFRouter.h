//
//  CFRouter.h
//  CFBase
//
//  Created by chen on 2018/6/1.
//

#import <Foundation/Foundation.h>

@interface CFRouter : NSObject

+ (instancetype)shareInstance;

- (int)getMaxCountWithA:(int)a andB:(int)b;

@end
