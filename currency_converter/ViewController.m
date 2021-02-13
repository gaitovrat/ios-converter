//
//  ViewController.m
//  currency_converter
//
//  Created by Ratmir Gaitov on 13.02.2021.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *currencyTextField;
@property (weak, nonatomic) IBOutlet UITextField *amountTextFIeld;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[self amountTextFIeld] setKeyboardType:UIKeyboardTypeNumberPad];
}

- (IBAction)getConvertValue:(id)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Convert" message:@"Hello world" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:nil];
    
    [alert addAction:action];
    
    [self presentViewController:alert animated:true completion:nil];
}


@end
