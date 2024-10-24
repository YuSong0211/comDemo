//
//  SLDWKWebView.m
//  SLDSBridge
//
//  Created by 王玉松 on 2024/8/13.
//

#import "SLDWKWebView.h"

@implementation SLDWKWebView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.navigationDelegate=self;
    }
    return self;
}

// 网页加载完成后注入 JavaScript
- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation {
    NSString *apiKey = @"your_api_key";
    NSString *userToken = @"your_user_token";
    NSString *js = [NSString stringWithFormat:@"window.apiKey = '%@'; window.userToken = '%@';", apiKey, userToken];
    [webView evaluateJavaScript:js completionHandler:^(id _Nullable result, NSError * _Nullable error) {
        if (error) {
            NSLog(@"Error: %@", error.localizedDescription);
        }
    }];
}

@end
