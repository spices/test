//
//  TableViewController.m
//  test
//
//  Created by healthplus on 14-5-23.
//  Copyright (c) 2014年 healthplus. All rights reserved.
//

#import "TableViewController.h"
#import "Music.h"
#import"mainview.h"

@interface TableViewController ()<UITableViewDataSource, UITableViewDelegate, UIAlertViewDelegate>{
    NSArray *mu;
    NSMutableArray *mual;
}

@end

@implementation TableViewController{

}



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{

    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
   // [self.navigationController setToolbarHidden:NO animated:YES];
   
    mual=[NSMutableArray array];
    [super viewDidLoad];
     mu=@[@"流行1",@"复古",@"摇滚",@"金属",@"wtf"];
    Music *mu1=[Music musicwithName:@"liuxing" title:@"001.png"];
    Music *mu2=[Music musicwithName:@"liuxing2" title:@"002.png"];
    [mual addObjectsFromArray:@[mu1,mu2]];
    
    
//      TableViewController *tableviewcontroller=[[TableViewController alloc]init];
//      UINavigationController *_navTest = [[UINavigationController alloc] initWithRootViewController:tableviewcontroller];
    
  
   // self.tabBarController = [[TableViewController alloc]initWithNibName:@"TableViewController" bundle:nil];
        // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//分区总数，plain默认为1
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    

    return 1;
}
//分区的总行数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

//    return mu.count;
    return mual.count;
}

//绘制cell,有多少行变执行多少次indexPath
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    
    //设置详情文字
//    cell.textLabel.text = [NSString stringWithFormat:@"产品-%d", indexPath.row];
 
//    NSString *text=mu[indexPath.row];
//    cell.textLabel.text =text;
//    cell.detailTextLabel.text=[NSString stringWithFormat:@"产品描述"];
//    
//    //实例图片
//    NSString *image=[NSString stringWithFormat:@"00%d.png",indexPath.row];
//
//    //设置图片
//    cell.imageView.image=[UIImage imageNamed:image];
//    
//    //右边剪头
//    cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
        Music *music=mual[indexPath.row];    //唱片描述
       cell.textLabel.text =music.name;
       cell.detailTextLabel.text=[NSString stringWithFormat:@"产品描述"];
    
        //实例图片
    
        //设置图片
        cell.imageView.image=[UIImage imageNamed:music.title];
    
        //右边剪头
        cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    Music *music=mual[indexPath.row];
    NSString *text=music.name;
    

    UIAlertView *ale=[[UIAlertView alloc] initWithTitle:@"提示" message:music.name delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
        ale.alertViewStyle = UIAlertViewStylePlainTextInput;
    [ale textFieldAtIndex:0].text=music.name;
    [ale show];
    
    //行号放进tag
    ale.tag=indexPath.row;
    

    
}

//alert点击委托
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
        if (buttonIndex == 0) return;
    NSString *text=[alertView textFieldAtIndex:(0)].text;
    Music *music=mual[alertView.tag];
    music.name=text;
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:alertView.tag inSection:0];
    
    NSArray *paths = @[indexPath];
    //局部刷新
    [_table reloadRowsAtIndexPaths:paths withRowAnimation:(UITableViewRowAnimationLeft)];
    
    //刷新所有
   // [_table reloadData];
}


- (IBAction)back:(id)sender {
    
    [self dismissModalViewControllerAnimated:YES];
   // [self presentModalViewController:mv animated:YES];
    
}
@end
