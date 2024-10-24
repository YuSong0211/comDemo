//
//  JsEchoApi.m
//  dsbridge
//
//  Created by du on 2018/2/1.
//  Copyright © 2018 wendu. All rights reserved.
//

#import "JsEchoApi.h"
#import "dsbridge.h"
#import "SLBridgeResponse.h"
@implementation JsEchoApi

- (id) syn:(id) arg
{
    NSDictionary *dict = @{@"@user":@"yus",@"name":@"hh"};

    return arg;
}

- (void) asyn: (id) arg :(JSCallback)completionHandler
{
    SLBridgeResponse * response = [SLBridgeResponse new];
    NSDictionary *dict = @{@"@user":@"yus",@"name":@"hh"};
    response.data = dict;
    NSString *jsonString = [response toJsonString];
    completionHandler(jsonString,YES);
//    completionHandler(arg,YES);
}

@end
