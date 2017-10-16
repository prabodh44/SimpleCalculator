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
#define SQRT 4


@property NSInteger num1;
@property NSInteger num2;
@property NSInteger operand;
@property double answer;
@property BOOL isEqualPressed;
@property BOOL oncePressed;

@property (strong, nonatomic) NSString *theNumber;
//using string in this context
//as the string can be converted
//into an interger and also later
//can be appeneded.

@property (strong, nonatomic) IBOutlet UILabel *lblText;
//IBOutlet lets the compoent
//be visible to the interface builder.
//It is used to connect the
//component to the GUI
@end

