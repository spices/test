//
//  Newscell.m
//  test
//
//  Created by healthplus on 14-6-11.
//  Copyright (c) 2014年 healthplus. All rights reserved.
//

#import "Newscell.h"
#import "News.h"
@implementation Newscell

+(id)newCell{
    return  [[NSBundle mainBundle]loadNibNamed:@"Newscell" owner:nil options:nil][0];
}

-(void)setNews:(News *)news{
    _news=news;
    _title.text=news.title;
    _image.image=[UIImage imageNamed:news.image];
}
@end
