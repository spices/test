//
//  mainview.m
//  test
//
//  Created by healthplus on 14-5-19.
//  Copyright (c) 2014年 healthplus. All rights reserved.
//

#import "mainview.h"
#import "TableViewController.h"

@interface mainview ()<UIAlertViewDelegate>

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
    
//   UINavigationBar *navBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
//   [self.view addSubview:navBar];
    // Do any additional setup after loading the view from its nib.
//    NSArray *views= [[NSBundle mainBundle] loadNibNamed:@"row" owner:nil options:nil];
//    [self.view addSubview:views[0]];
//tttt
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tableview:(id)sender {
    
    TableViewController *tableviewcontroller=[[TableViewController alloc]init];
    
 //   [self.navigationController pushViewController:tableviewcontroller animated:NO];
 
     [self presentModalViewController:tableviewcontroller animated:YES];
    //  [self.navigationController pushViewController:tableviewcontroller animated:YES];

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
@end
