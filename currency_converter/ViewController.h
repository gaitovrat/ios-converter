//
//  ViewController.h
//  currency_converter
//
//  Created by Ratmir Gaitov on 13.02.2021.
//

#import <UIKit/UIKit.h>
#import "service/CurrencyService.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *currencyTextField;
@property (weak, nonatomic) IBOutlet UITextField *amountTextFIeld;
@end

