//
//  ScrollController.h
//  test
//
//  Created by healthplus on 14-5-29.
//  Copyright (c) 2014年 healthplus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScrollController : UIViewController

@property (strong, nonatomic) IBOutlet UIView *view2;
- (IBAction)scroll1:(id)sender;
- (IBAction)scroll2:(id)sender;
- (IBAction)change:(id)sender;
@end
