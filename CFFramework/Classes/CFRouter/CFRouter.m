//
//  CFRouter.m
//  CFFramework
//
//  Created by chen on 2018/6/9.
//

#import "CFRouter.h"

@implementation CFRouter


+ (void)startRouterWithModule:(NSString *)module
                      andPath:(NSString*)path
                     andParam:(NSDictionary *)param
                  andCallBack:(CFRouterCallBackBlock)block
{
    if (!module||!path||[module isEqualToString:@""]||[path isEqualToString:@""]) {
        NSLog(@"不支持该协议");
        return ;
    }
    
    NSDictionary *moduleDict = [self getModuleDictWithModuleName:module andPath:path];
    if (!moduleDict) {
        NSLog(@"不支持该协议");
        return ;
    }
    
    
}

+ (NSDictionary *)getModuleDictWithModuleName:(NSString *)module andPath:(NSString *)path
{
    NSString *modulePath = [[NSBundle mainBundle] pathForResource:module ofType:@"plist"];
    if (!modulePath) {
        module = [module lowercaseString];
        modulePath = [[NSBundle mainBundle] pathForResource:module ofType:@"plist"];
    }
    
    if (!modulePath) {
        return nil;
    }
    
    
    NSDictionary *resultDict = [NSDictionary dictionaryWithContentsOfFile:modulePath];
    
    NSDictionary *moduleDict = [resultDict objectForKey:path];
    
    return moduleDict;
    
}

@end
