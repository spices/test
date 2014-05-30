//
//  SegmentedControl.m
//  test
//
//  Created by healthplus on 14-5-29.
//  Copyright (c) 2014年 healthplus. All rights reserved.
//

#import "SegmentedControl.h"

@implementation SegmentedControl



- (void)awakeFromNib{
	[[NSNotificationCenter defaultCenter] addObserver:self
											 selector:@selector(switchViews:)
												 name:@"switchViews"
											   object:nil];
}

- (void)switchViews:(NSNotification*)notification{
    NSNumber *viewNumber = [notification object];
	NSInteger i = [viewNumber integerValue];
	[self setSelectedSegmentIndex:i];
     if(i==0){
         NSLog(@"0");

      [[_mainview view] bringSubviewToFront:_view1];
    }else if(i==1){
//          [[_mainview view] bringSubviewToFront:_view2];
//        NSLog(@"1");
        [_mainview.view addSubview:_view2];

    }
	}

- (void)dealloc{

	[[NSNotificationCenter defaultCenter] removeObserver:self];
}


@end
