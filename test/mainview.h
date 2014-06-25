//
//  mainview.h
//  test
//
//  Created by healthplus on 14-5-19.
//  Copyright (c) 2014年 healthplus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface mainview : UIViewController

@property (weak, nonatomic) IBOutlet UIView *view1;
@property (weak, nonatomic) IBOutlet UIView *view2;
- (IBAction)scroll:(id)sender;
@property (weak, nonatomic) IBOutlet UINavigationBar *bar;

- (IBAction)tableview:(id)sender;
- (IBAction)search:(id)sender;
- (IBAction)rep:(id)sender;
- (IBAction)switchViews:(id)sender;
- (IBAction)cellbtn:(id)sender;
- (IBAction)Custom:(id)sender;
- (IBAction)TextField:(id)sender;
- (IBAction)tabbar:(id)sender;

@end
