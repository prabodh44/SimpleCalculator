//
//  ViewController.m
//  SimpleCalculator
//
//  Created by ith on 10/12/17.
//  Copyright © 2017 ith. All rights reserved.
//

#import "ViewController.h"

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
    
    _theNumber = @"0";
    [self printNumber];
    
}

-(void) printNumber {
    [_lblText setText:_theNumber];
    NSLog(@"printNumber : %@", _theNumber);
}

//adding event handlers for button presses
-(IBAction)press9:(id)sender{
    _theNumber = [_theNumber stringByAppendingString:@"9"];
    [self printNumber];
}

-(IBAction)press8:(id)sender{
    _theNumber = [_theNumber stringByAppendingString:@"8"];
    [self printNumber];
}

-(IBAction)press7:(id)sender{
    _theNumber = [_theNumber stringByAppendingString:@"7"];
    [self printNumber];
}

-(IBAction)press6:(id)sender{
    _theNumber = [_theNumber stringByAppendingString:@"6"];
    [self printNumber];
}

-(IBAction)press5:(id)sender{
    _theNumber = [_theNumber stringByAppendingString:@"5"];
    [self printNumber];
}

-(IBAction)press4:(id)sender{
    _theNumber = [_theNumber stringByAppendingString:@"4"];
    [self printNumber];
}

-(IBAction)press3:(id)sender{
    _theNumber = [_theNumber stringByAppendingString:@"3"];
    [self printNumber];
}

-(IBAction)press2:(id)sender{
    _theNumber = [_theNumber stringByAppendingString:@"2"];
    [self printNumber];
}

-(IBAction)press1:(id)sender{
    _theNumber = [_theNumber stringByAppendingString:@"1"];
    [self printNumber];
}

-(IBAction)press0:(id)sender{
    _theNumber = [_theNumber stringByAppendingString:@"0"];
    [self printNumber];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
