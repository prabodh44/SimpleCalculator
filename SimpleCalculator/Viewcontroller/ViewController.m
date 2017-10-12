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


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
