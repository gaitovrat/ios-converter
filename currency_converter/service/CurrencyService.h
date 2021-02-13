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
+ (void)convert:(NSString*)currency to:(NSString*)amount;
@end

#endif /* CurrencyConverter_h */
