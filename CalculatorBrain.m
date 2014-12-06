//
//  CalculatorBrain.m
//  Calculator2
//
//  Created by Igor Matveevskii on 31/10/14.
//  Copyright (c) 2014 Igor Matveevskii. All rights reserved.
//

#import "CalculatorBrain.h"


@implementation CalculatorBrain


- (void) setOperand: (double) anOperand{
    operand = anOperand;
    
}
- (void) performWaitingOperation{
    if([@"+" isEqual:waitingOperation]){
        operand = waitingOperand + operand;
    } else if ([@"-" isEqual:waitingOperation]){
        operand = waitingOperand - operand;
    } else if ([@"*" isEqual:waitingOperation]){
        operand = waitingOperand * operand;
    } else if ([@"/" isEqual:waitingOperation]){
        if (operand) {
            operand = waitingOperand /operand;
        }
        
    }
}



- (double) performOperation:(NSString*) operation{
    
    if ([operation isEqual:@"sqrt"]){
        operand = sqrt(operand);
    }
    else{
        [ self performWaitingOperation ];
        waitingOperation = operation;
        waitingOperand = operand;
    }
    
    
    return operand;
    
}


@end