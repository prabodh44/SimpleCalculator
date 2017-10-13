//
//  ViewController.m
//  SimpleCalculator
//
//  Created by ith on 10/12/17.
//  Copyright © 2017 ith. All rights reserved.
//

#import "ViewController.h"
#include "math.h" //header file for the sqrt function

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //doing initilizations
    _num1 = 0;
    _num2 = 0;
    _answer = 0.0;
    _operand = PLUS;
    
    _theNumber = @"";
    [self printNumber];
}

-(void) printNumber {
    [_lblText setText:_theNumber];
}

-(void) saveNum1 {
    _num1 = [_theNumber integerValue];
    _theNumber = @"";
}

-(IBAction)clearNum:(id)sender{
    _theNumber = @"";
    [self printNumber];
}

-(IBAction) calculate:(id)sender {
    _num2 = [_theNumber integerValue];
    switch (_operand) {
        case PLUS:
            _answer = _num1 + _num2;
            break;
        case MINUS:
            _answer = _num1 - _num2;
            break;
        case MULTIPLY:
            _answer = _num1 * _num2;
            break;
        case SQRT:
            _answer = sqrt((double) _num1);
            break;
        case DIVIDE:
            if(_num2 == 0){
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Cannot divide by zero" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
                [alert show];
            }
                _answer = (double)_num1 / (double)_num2;
            break;
        default:
            break;
    }

    _theNumber = [NSString stringWithFormat:@"%g", _answer];
    [self printNumber];
    _num1 = 0;
    _num2 = 0;
    _answer = 0.0; 
}
//TODO: figure out a way to condense the set* functions into one function
//adding event handlers for operand button presses
-(IBAction)setPlus:(id)sender{
    [self saveNum1];
    _operand = PLUS;
    NSString *output = [NSString stringWithFormat:@"%lu +", _num1];
    [_lblText setText:output];
    
}

-(IBAction) setMinus:(id)sender{
    [self saveNum1];
    _operand = MINUS;
    NSString *output = [NSString stringWithFormat:@"%lu -", _num1];
    [_lblText setText:output];
}

-(IBAction) setMultiply:(id)sender{
    [self saveNum1];
    _operand = MULTIPLY;
    NSString *output = [NSString stringWithFormat:@"%lu *", _num1];
    [_lblText setText:output];
}

-(IBAction) setDivide:(id)sender{
    [self saveNum1];
    _operand = DIVIDE;
    NSString *output = [NSString stringWithFormat:@"%lu /", _num1];
    [_lblText setText:output];
}

-(IBAction)setSquareRoot:(id)sender{
    [self saveNum1];
    _operand = SQRT;
    NSString *output = [NSString stringWithFormat:@"sqrt(%lu)", _num1];
    [_lblText setText:output];
}


//adding event handlers for number button presses
-(IBAction)numberPressed:(id)sender{
    NSString *tag = [NSString stringWithFormat:@"%lu", [sender tag]];
    _theNumber = [_theNumber stringByAppendingString:tag];
    [self printNumber];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
