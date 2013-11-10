//
//  CCViewController.m
//  View Objects in Code
//
//  Created by Eliot Arntz on 11/10/13.
//  Copyright (c) 2013 Code Coalition. All rights reserved.
//

#import "CCViewController.h"

@interface CCViewController ()

@property (strong, nonatomic) UILabel *myLabel;
@property (strong, nonatomic) UITextField *myTextField;

@end

@implementation CCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    /* Create UILabel in code. Set its' frame and add it to the view. */
    self.myLabel = [[UILabel alloc] init];
    self.myLabel.frame = CGRectMake(20, 60, 280, 22);
    [self.view addSubview:self.myLabel];
    
    /* Setup some attributes for our label in this case the initial text and textColor. */
    self.myLabel.textColor = [UIColor blueColor];
    self.myLabel.text = @"placeholder";
    
    /* Create UITextField in code. Set its' frame and add it to the view. We also setup some initial attributes such as the placeholder text and background color. */
    self.myTextField = [[UITextField alloc] init];
    self.myTextField.frame = CGRectMake(20, 110, 280, 30);
    self.myTextField.placeholder = @"Type text here";
    self.myTextField.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:self.myTextField];
    
    /* Create UIButton in code of type UIButtonTypeRoundedRect which does some initial setup of our button. Set its' frame, title, target-action and add it to the view. We also setup some initial attributes such as the placeholder text and background color. */
    UIButton *myButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [myButton addTarget:self action:@selector(myButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [myButton setTitle:@"press me!" forState:UIControlStateNormal];
    myButton.frame = CGRectMake(20, 160, 280, 30);
    [self.view addSubview:myButton];
}

/* When the button is pressed update the label's text property to be equal to the textField's text property. Also hide the keyboard. */
- (void)myButtonPressed:(UIButton *)sender
{
    self.myLabel.text = self.myTextField.text;
    [self.myTextField resignFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
