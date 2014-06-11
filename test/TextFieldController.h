//
//  TextFieldController.h
//  test
//
//  Created by healthplus on 14-6-9.
//  Copyright (c) 2014年 healthplus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TextFieldController : UIViewController
- (IBAction)textFiledReturnEditing:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *firstField;
- (IBAction)backgroundTap:(id)sender;
- (IBAction)touchView:(id)sender;

@end
