//
//  CalculatorBrain.h
//  Calculator2
//
//  Created by Igor Matveevskii on 31/10/14.
//  Copyright (c) 2014 Igor Matveevskii. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface CalculatorBrain : NSObject{
    NSString *waitingOperation;
    double waitingOperand;
    double operand;
    
}

- (void) setOperand: (double) anOperand;
- (double) performOperation:(NSString*) operation;
@end