//
//  CurrencyConverter.m
//  currency_converter
//
//  Created by Ratmir Gaitov on 13.02.2021.
//

#import "CurrencyService.h"

@implementation CurrencyService
+ (instancetype)initWithCurrency:(NSString *)currency amount:(NSNumber *)amount {
    CurrencyService* service = [[CurrencyService alloc] init];
    if(service) {
        [service setCurrency:currency];
        [service setAmount:amount];
    }
    return service;
}

- (void)convertWithComplition:(void (^)(NSData *))completion onFailure:(void (^)(NSError *))failure {
    NSString *urlString = [NSString stringWithFormat:@"https://habr.com/ru/post/225079/"];
    NSURL *url = [NSURL URLWithString:urlString];
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration];
    
    NSURLSessionDataTask *task = [session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if(error) {
            failure(error);
            return;
        }

        if(response) {
            NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *) response;
            if([httpResponse statusCode] == 200 && data) {
                dispatch_async(dispatch_get_main_queue(), ^{
                    completion(data);
                });
            }
        }
        }];
    
    [task resume];
}
@end
