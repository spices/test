//
//  CustomView.m
//  test
//
//  Created by healthplus on 14-6-5.
//  Copyright (c) 2014年 healthplus. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView
@synthesize pointa;



- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)drawRect:(CGRect)rect{
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
//    CGContextMoveToPoint (context, 75, 10);
//    CGContextAddLineToPoint (context, 10, 150);
//    CGContextAddLineToPoint (context, 160, 150);
   
    CGFloat *pa=75;

    CGContextMoveToPoint (context,75, 10);
    CGContextAddLineToPoint (context, 10, 150);
    CGContextAddLineToPoint (context, 160, 150);
      CGContextAddLineToPoint (context, 75, 10);
    //中点
      CGContextAddLineToPoint (context, 75, 95);
      CGContextAddLineToPoint (context, 160, 150);
      CGContextAddLineToPoint (context, 75, 95);
    CGContextAddLineToPoint (context, 10, 150);
   
    
    // Closing the path connects the current point to the start of the current path.
    //CGContextClosePath(context);
    // And stroke the path
    //描边颜色
    [[UIColor blackColor] setStroke];
   
    //CGContextStrokePath(context);
    //[[UIColor redColor] setFill];
    //CGContextSetFillColorWithColor(context, [UIColor blueColor].CGColor);
   //CGContextDrawPath(context, kCGPathFillStroke);
   // CGContextFillPath(context);
    //kCGPathFillStroke,kCGPathFill,kCGPathStroke
    CGContextStrokePath(context);
    
    
      CGContextRef context2 = UIGraphicsGetCurrentContext();
    CGContextMoveToPoint (context2, 75, 55);
    CGContextAddLineToPoint (context2, 40, 125);
      CGContextAddLineToPoint (context2, 105, 115);
     CGContextAddLineToPoint (context2, 75, 55);
     [[UIColor redColor] setStroke];


    CGContextStrokePath(context2);
    
}
@end
