//
//  News.h
//  test
//
//  Created by healthplus on 14-6-11.
//  Copyright (c) 2014年 healthplus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface News : NSObject
@property(nonatomic,copy)NSString *title;
@property(nonatomic,copy)NSString *image;

-(id)initWithDice:(NSDictionary *)dict;
+(id)newsWithDict:(NSDictionary *)dict;

@end
