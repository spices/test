//
//  Music.m
//  test
//
//  Created by healthplus on 14-5-26.
//  Copyright (c) 2014年 healthplus. All rights reserved.
//

#import "Music.h"

@implementation Music
+(id)musicwithName:(NSString *)name title:(NSString *)title{
    Music *music=[[Music alloc] init];
    music.name=name;
    music.title=title;
    return  music;
}

@end
