//
//  SegmentedControl.h
//  test
//
//  Created by healthplus on 14-5-29.
//  Copyright (c) 2014年 healthplus. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "mainview.h"

@interface SegmentedControl : UISegmentedControl
@property (weak, nonatomic) IBOutlet UIView *view1;
@property (weak, nonatomic) IBOutlet UIView *view2;
@property(weak,nonatomic) IBOutlet mainview *mainview;
@end
