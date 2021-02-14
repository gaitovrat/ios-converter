//
//  CurrencyConverter.h
//  currency_converter
//
//  Created by Ratmir Gaitov on 13.02.2021.
//

#ifndef CurrencyConverter_h
#define CurrencyConverter_h

#include <Foundation/Foundation.h>

@interface CurrencyService : NSObject
//+ (void)convert:(NSString *)currency to:(NSString *)amount completionHandler:(void (^)(NSData *data))completion;
@property NSString *currency;
@property NSNumber *amount;;

+ (instancetype)initWithCurrency:(NSString *)currency amount:(NSNumber *)amount;

- (void)convertWithComplition:(void (^)(NSData *data))completion onFailure:(void (^)(NSError *error))failure;
@end

#endif /* CurrencyConverter_h */
