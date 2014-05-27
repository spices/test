//
//  Music.h
//  test
//
//  Created by healthplus on 14-5-26.
//  Copyright (c) 2014年 healthplus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Music : NSObject
@property(nonatomic,copy)NSString * name;
@property(nonatomic,copy)NSString * title;
+(id)musicwithName:(NSString *)name title:(NSString *)title;
@end
