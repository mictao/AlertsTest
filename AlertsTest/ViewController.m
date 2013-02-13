//
//  ViewController.m
//  AlertsTest
//
//  Created by Administrator on 13-02-11.
//  Copyright (c) 2013 Administrator. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated{
    
    self.view.backgroundColor = [UIColor greenColor];
    
    NSString *message = @"Enter Your Credentials";
    UIAlertView *alertView = [[UIAlertView alloc]
                              initWithTitle:@"Password"
                              message:message
                              delegate:self
                              cancelButtonTitle:@"Cancel"
                              otherButtonTitles:@"OK", nil];
    
   
    [alertView setAlertViewStyle:UIAlertViewStyleLoginAndPasswordInput];
       [alertView show];
}


- (void) textFieldDidEndEditing:(UITextField *)textField{

    NSString *textValue = textField.text;
    NSLog(@"Value: %@",textValue);
    
}

- (void) alertView:(UIAlertView *)alertView
clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSString *buttonTitle = [alertView buttonTitleAtIndex:buttonIndex];
    
    if ([buttonTitle isEqualToString:@"OK"] ){
        UITextField *textField = [alertView textFieldAtIndex:0];
        NSString *myString = textField.text;
        NSLog(@"Text: %@", myString);
        NSLog(@"You pressed OK");
        //grab the value in the alert box and put it into a variable
        
    }
    else if ([buttonTitle isEqualToString:@"Cancel"] ){
        NSLog(@"You pressed Cancel");
    }
}

@end

/*
 for entering one line of character
- (void)viewDidAppear:(BOOL)animated{
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSString *message = @"Enter Your Credit Card Number";
    UIAlertView *alertView = [[UIAlertView alloc]
                              initWithTitle:@"Credit Card Number"
                              message:message
                              delegate:self
                              cancelButtonTitle:@"Cancel"
                              otherButtonTitles:@"OK", nil];
    
    //[alertView setAlertViewStyle:UIAlertViewStylePlainTextInput];
    [alertView setAlertViewStyle:UIAlertViewStyleSecureTextInput];
    
    UITextField *textField = [alertView textFieldAtIndex:0];
    //for certain keyboard styles
    //textField.keyboardType = UIKeyboardTypeNumberPad;
    
    [alertView show];
}
*/




/* For a normal alert box
 - (void)viewDidAppear:(BOOL)animated{
       
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSString *message = @"Are you sure?";
    UIAlertView *alertView = [[UIAlertView alloc]
                                initWithTitle:@"Title"
                                message:message
                                delegate:self
                                cancelButtonTitle:@"Cancel"
                                otherButtonTitles:@"OK", nil];
    
    [alertView show];
}

- (void) alertView:(UIAlertView *)alertView
clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSString *buttonTitle = [alertView buttonTitleAtIndex:buttonIndex];
    
    if ([buttonTitle isEqualToString:@"OK"] ){
        NSLog(@"You pressed OK");
    }
    else if ([buttonTitle isEqualToString:@"Cancel"] ){
        NSLog(@"You pressed Cancel");
    }
 
}*/
    
    

