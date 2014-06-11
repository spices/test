//
//  TextFieldController.m
//  test
//
//  Created by healthplus on 14-6-9.
//  Copyright (c) 2014年 healthplus. All rights reserved.
//

#import "TextFieldController.h"

@interface TextFieldController ()

@end

@implementation TextFieldController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    

    [super viewDidLoad];

    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)backgroundTap:(id)sender {
    //[_firstField resignFirstResponder];
}

- (IBAction)touchView:(id)sender {
      [self.view endEditing:YES]; 
}




- (IBAction)textFiledReturnEditing:(id)sender {
    [sender resignFirstResponder];
}
@end
