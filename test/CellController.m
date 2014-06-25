//
//  CellController.m
//  test
//
//  Created by healthplus on 14-6-10.
//  Copyright (c) 2014年 healthplus. All rights reserved.
//

#import "CellController.h"
#import "News.h"
#import "Newscell.h"

@interface CellController ()
{
    NSMutableArray *newes;
}

@end

@implementation CellController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *button =[[UIButton alloc]initWithFrame:CGRectMake(0, 0, 30, 30 )];
    //button.frame = CGRectMake(0, 0, 24, 24);
    [button setImage:[UIImage imageNamed:@"b2.png"] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    self.navigationItem.leftBarButtonItem = backItem;
    
    
    
    NSArray *array=[NSArray arrayWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"news.plist" ofType:nil]];
    newes=[NSMutableArray array];
    for (NSDictionary *dict in array) {
        [newes addObject:[News newsWithDict:dict]];
    }
    


}
- (void)backAction {
    [self.navigationController popViewControllerAnimated:YES];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return newes.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //定义循环标记
    static NSString *CellIdentifier=@"Newscell";
    
    //从缓存持中取出cell
    Newscell *cell=[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell==nil) {
       //NSArray *objects=[[NSBundle mainBundle]loadNibNamed:@"News" owner:nil options:nil];
        
//       UINib *nib=[UINib nibWithNibName:@"News" bundle:[NSBundle mainBundle]];
//        NSArray *objects=[nib instantiateWithOwner:nil options:nil];
//        
//        cell=objects[0];
        cell=[Newscell newCell];
//        
//        NSString *image=[NSString stringWithFormat:@"00%d.png",indexPath.row];
////        cell.imageView.image=[UIImage imageNamed:image];
//        UIImageView *imageview=(UIImageView *)[cell viewWithTag:4];
//        imageview.image=[UIImage imageNamed:image];
        
        
        
        
//        UILabel *labe=(UILabel *)[cell viewWithTag:1];
//        labe.text=new.title;
//        UIImageView *imageview=(UIImageView *)[cell viewWithTag:4];
//        imageview.image=[UIImage imageNamed:new.image];

        
    }
    
    News *new=newes[indexPath.row];
    cell.news=new;

    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 120;
}

@end
