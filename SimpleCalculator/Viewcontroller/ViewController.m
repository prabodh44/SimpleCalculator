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
    
    _isEqualPressed = false;
    _operandPressed = true;
    
    _theNumber = @"";
    //[self printNumber];
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
    
    _isEqualPressed = true;
    _operandPressed = true;
    
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
    if(_operandPressed){
        [self saveNum1];
        _operand = PLUS;
        NSString *output = [NSString stringWithFormat:@"%lu +", _num1];
        [_lblText setText:output];
        NSLog(@"setPlus -> _num1 : %lu", _num1);
    }
    _operandPressed = false;
}

-(IBAction) setMinus:(id)sender{
    if(_operandPressed){
        [self saveNum1];
        _operand = MINUS;
        NSString *output = [NSString stringWithFormat:@"%lu -", _num1];
        [_lblText setText:output];
    }
    _operandPressed = false;
}

-(IBAction) setMultiply:(id)sender{
    if(_operandPressed){
        [self saveNum1];
        _operand = MULTIPLY;
        NSString *output = [NSString stringWithFormat:@"%lu *", _num1];
        [_lblText setText:output];
    }
    _operandPressed = false;
}

-(IBAction) setDivide:(id)sender{
    if(_operandPressed){
        [self saveNum1];
        _operand = DIVIDE;
        NSString *output = [NSString stringWithFormat:@"%lu /", _num1];
        [_lblText setText:output];
    }
    _operandPressed = false;
}

-(IBAction)setSquareRoot:(id)sender{
    if(_operandPressed){
        [self saveNum1];
        _operand = SQRT;
        NSString *output = [NSString stringWithFormat:@"sqrt(%lu)", _num1];
        [_lblText setText:output];
    }
    _operandPressed = false;
}

//a function to handle
//button press events
-(IBAction)numberPressed:(id)sender{
    NSLog(@"numberPressed outside if-> _oncePressed: %d", (int)_operandPressed);
    NSString *tag = [NSString stringWithFormat:@"%lu", [sender tag]];
    
    //code to not appened number to answer
    //after equals to is pressed
    if(_isEqualPressed){
        _theNumber = @"";
        _isEqualPressed = false;
    }
    
    _theNumber = [_theNumber stringByAppendingString:tag];
    [self printNumber];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
