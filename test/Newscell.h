//
//  Newscell.h
//  test
//
//  Created by healthplus on 14-6-11.
//  Copyright (c) 2014年 healthplus. All rights reserved.
//

#import <UIKit/UIKit.h>
@class News;

@interface Newscell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property(nonatomic,strong)News *news;//模型数据

+(id)newCell;
@end
