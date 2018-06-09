//
//  CFRouter.h
//  CFFramework
//
//  Created by chen on 2018/6/9.
//

#import <Foundation/Foundation.h>
#import "CFCallBackBaseModel.h"

typedef void(^CFRouterCallBackBlock)(CFCallBackBaseModel *result);

//路由
@interface CFRouter : NSObject

+ (void)startRouterWithModule:(NSString *)module
                       andPath:(NSString*)path
                      andParam:(NSDictionary *)param
                   andCallBack:(CFRouterCallBackBlock)block;

@end
