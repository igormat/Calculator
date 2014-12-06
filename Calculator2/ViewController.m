//
//  ViewController.m
//  Calculator2
//
//  Created by Igor Matveevskii on 31/10/14.
//  Copyright (c) 2014 Igor Matveevskii. All rights reserved.
//

#import "ViewController.h"
#import "CalculatorBrain.h"



@implementation ViewController


- (CalculatorBrain*) brain{
    if (!brain){
        brain = [[CalculatorBrain alloc] init];
    }
    return brain;
}

- (IBAction) digitPressed:(UIButton *) sender{
    NSString *digit = [[sender titleLabel] text];
    if(userInTheMiddleOfTypingNumber){
        [display setText:[[display text] stringByAppendingString:digit]];
        
    } else {
        [display setText:digit];
        userInTheMiddleOfTypingNumber = YES;
    }
    
}
- (IBAction) operationPressed:(UIButton *) sender{
    
    if (userInTheMiddleOfTypingNumber) {
        [[self brain] setOperand:[[display text] doubleValue]];
        userInTheMiddleOfTypingNumber = NO;
    }
    NSString* operation = [[sender titleLabel] text];
    double result = [[self brain] performOperation:operation];
    [display setText:[NSString stringWithFormat:@"%g", result]];
    
}
@end
