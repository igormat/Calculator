//
//  ViewController.h
//  Calculator2
//
//  Created by Igor Matveevskii on 31/10/14.
//  Copyright (c) 2014 Igor Matveevskii. All rights reserved.
//
//  add comment

@class CalculatorBrain;

#import <UIKit/UIKit.h>
#import "CalculatorBrain.h"

@interface ViewController : UIViewController{
    IBOutlet UILabel *display;
    CalculatorBrain  *brain;


}
- (IBAction) digitPressed:(UIButton *) sender;
- (IBAction) operationPressed:(UIButton *) sender;
@end

