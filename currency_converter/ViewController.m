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
}

- (IBAction)getConvertValue:(id)sender {
    [CurrencyService convert:[[self currencyTextField] text] to:[[self currencyTextField] text] completionHandler:^(NSData *data) {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Convert" message:@"Hello world" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:nil];
        
        [alert addAction:action];
        
        [self presentViewController:alert animated:true completion:nil];
    }];
}
@end
