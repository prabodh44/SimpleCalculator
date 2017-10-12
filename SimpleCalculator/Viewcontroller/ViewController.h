//
//  ViewController.h
//  SimpleCalculator
//
//  Created by ith on 10/12/17.
//  Copyright © 2017 ith. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
//defining constants for operands
#define PLUS 0
#define MINUS 1
#define MULTIPLY 2
#define DIVIDE 3

{
    NSInteger num1;
    NSInteger num2;
    NSInteger operand;
    NSInteger answer;
    
    NSString *theNumber;
    //using string in this context
    //as the string can be converted
    //into an interger and also later
    //can be appeneded.
    
    IBOutlet UILabel *lblText;
    //IBOutlet lets the compoent
    //to be visible to the interface builder.
    //It can later be used to connect the
    //component to the GUI
}

@property NSInteger num1;
@property NSInteger num2;
@property NSInteger operand;
@property double answer;

@property (strong, nonatomic) NSString *theNumber;
//using string in this context
//as the string can be converted
//into an interger and also later
//can be appeneded.

@property (strong, nonatomic) IBOutlet UILabel *lblText;
//IBOutlet lets the compoent
//to be visible to the interface builder.
//It can later be used to connect the
//component to the GUI
@end

