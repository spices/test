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

@interface mainview ()<UIAlertViewDelegate>
@property(strong,nonatomic)TableViewController *table;
@end

@implementation mainview

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
       
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    
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

    [self presentViewController:tableviewcontroller animated:YES completion:nil];
 

    

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

               
               
@end
