//
//  News.m
//  test
//
//  Created by healthplus on 14-6-11.
//  Copyright (c) 2014年 healthplus. All rights reserved.
//

#import "News.h"

@implementation News

-(id)initWithDice:(NSDictionary *)dict{
    if (self=[super init]) {
        self.title=dict[@"title"];
        self.image=dict[@"image"];
    }
    return self;
}

+(id)newsWithDict:(NSDictionary *)dict{
    return [[self alloc]initWithDice:dict];
}
@end
