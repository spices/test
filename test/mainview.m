//
//  mainview.m
//  test
//
//  Created by healthplus on 14-5-19.
//  Copyright (c) 2014年 healthplus. All rights reserved.
//

#import "mainview.h"
#import "TableViewController.h"
#import "ScrollController.h"
#import "CellController.h"
#import "CustomView.h"
#import "TextFieldController.h"
#import "TabBarController.h"

@interface mainview ()<UIAlertViewDelegate>
@property(strong,nonatomic)TableViewController *table;

@end

@implementation mainview

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    self.title=@"index";
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"1@2x.png"] forBarMetrics:(UIBarMetricsDefault)];
    [self.navigationController.navigationBar setTintColor:[UIColor redColor]];
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(rep:)];
    
    self.navigationItem.leftBarButtonItem = leftButton;
    
  
    //toolbar
     [self.navigationController  setToolbarHidden:YES animated:YES];
//    UIBarButtonItem *one = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self  action:@selector(search:)];
//
//    UIBarButtonItem *two = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks target:nil action:nil];
//    UIBarButtonItem *three = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:nil action:nil];
//    UIBarButtonItem *four = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:nil action:nil];
//    UIBarButtonItem *flexItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
//    [self setToolbarItems:[NSArray arrayWithObjects:flexItem, one, flexItem, two, flexItem, three, flexItem, four, flexItem, nil]];
//
    //tt
   // self.tabBarController.viewControllers=@[_view1,_view2];
    [self.view addSubview:_view2];
    [self.view addSubview:_view1];
   

    
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)scroll:(id)sender {
    
    ScrollController *scroll=[[ScrollController alloc]init];
    
    [self presentViewController:scroll animated:YES completion:nil];
   
}

- (IBAction)tableview:(id)sender {
    
    TableViewController *tableviewcontroller=[[TableViewController alloc]init];
  //  mainview *mv=[[mainview alloc]init];
    
   // [self.navigationController pushViewController:tableviewcontroller animated:NO];

     //[self presentViewController:tableviewcontroller animated:YES completion:nil];
 [self.navigationController pushViewController:tableviewcontroller animated:YES];
    tableviewcontroller.title=@"table";
    
    

}

- (IBAction)search:(id)sender {
    UIView *ui=[[UIView alloc]init];
    ui.frame=CGRectMake(20 , 0, 400, 600);
    ui.backgroundColor=[UIColor redColor];

    [self.view addSubview:ui];


    
}

- (IBAction)rep:(id)sender {
    UIAlertView *alert= [[UIAlertView alloc]initWithTitle:@"reply" message:nil delegate:nil cancelButtonTitle:@"Cancel"otherButtonTitles:nil, nil];
    [alert show];
}

- (IBAction)switchViews:(id)sender{
	UISegmentedControl *segmentedControl = sender;
	[[NSNotificationCenter defaultCenter] postNotificationName:@"switchViews" object:[NSNumber numberWithInteger:[segmentedControl selectedSegmentIndex]]];
  
}

- (IBAction)cellbtn:(id)sender {
    CellController *cell=[[CellController alloc]init];
    cell.title=@"cell test";
    [self.navigationController pushViewController:cell animated:YES];
}

- (IBAction)Custom:(id)sender {
  
}

- (IBAction)TextField:(id)sender {
    TextFieldController *tf=[[TextFieldController alloc]init];
    [self.navigationController pushViewController:tf animated:YES];
}

- (IBAction)tabbar:(id)sender {
    TabBarController *tb=[[TabBarController alloc]init];
    [self.navigationController pushViewController:tb animated:YES];
}

               
               
@end
