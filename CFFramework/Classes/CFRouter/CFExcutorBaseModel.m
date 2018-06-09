//
//  CFExcutorBaseModel.m
//  CFFramework
//
//  Created by chen on 2018/6/9.
//

#import "CFExcutorBaseModel.h"
#import "CFInBaseModel.h"
#import "CFRouter.h"
@implementation CFExcutorBaseModel

- (void)executorRouterWithInModel:(CFInBaseModel *)model andCallBack:(CFRouterCallBackBlock)block
{
    
}

- (void)executorNotSupportTip
{
    NSLog(@"不支持该协议");
}

@end
