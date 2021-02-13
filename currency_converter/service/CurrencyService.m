//
//  CurrencyConverter.m
//  currency_converter
//
//  Created by Ratmir Gaitov on 13.02.2021.
//

#import "CurrencyService.h"

@implementation CurrencyService
+ (void)convert:(NSString *)currency to:(NSString *)amount {
    NSLog(@"%@ %@\n", currency, amount);
}
@end
