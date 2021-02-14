//
//  ViewController.m
//  currency_converter
//
//  Created by Ratmir Gaitov on 13.02.2021.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[self amountTextFIeld] setKeyboardType:UIKeyboardTypeNumberPad];
    
    CurrencyService* service = [CurrencyService initWithCurrency:@"" amount:[NSNumber numberWithFloat:0]];
    [self setService:service];
}

- (IBAction)getConvertValue:(id)sender {
    NSNumber *amount = [self getFloatFromAmount];
    NSString *currency = [self getTextFromCurrency];
    
    if([amount floatValue] > 0 && ![currency isEqual:@""]) {
        [[self service] setAmount:amount];
        [[self service] setCurrency:currency];
        
        [[self service] convertWithComplition:^(NSData *data) {
            UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Convert" message:@"Hello world" preferredStyle:UIAlertControllerStyleAlert];
    
            UIAlertAction *action = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:nil];
    
            [alert addAction:action];
    
            [self presentViewController:alert animated:true completion:nil];
        } onFailure:^(NSError *error) {}];
    }
}

- (NSNumber*)getFloatFromAmount {
    return [NSNumber numberWithFloat:[[[self amountTextFIeld] text] floatValue]];
}

- (NSString*)getTextFromCurrency {
    return [[self currencyTextField] text];
}
@end
