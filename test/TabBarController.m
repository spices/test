//
//  TabBarController.m
//  test
//
//  Created by healthplus on 14-6-12.
//  Copyright (c) 2014年 healthplus. All rights reserved.
//

#import "TabBarController.h"
#import "TabFirstController.h"
#import "TabSecondController.h"

@interface TabBarController ()

@end

@implementation TabBarController

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
    //隐藏上一级到bar
    [self.navigationController  setToolbarHidden:YES animated:YES];

    // Do any additional setup after loading the view from its nib.
    UIViewController *first=[[TabFirstController alloc]init];
    UIViewController *second=[[TabSecondController alloc]init];
    
    //(定义在.h中，否则在开启arc会自动释放掉，内存访问出错)
    _tabBarController=[[UITabBarController alloc]init];
    //设置委托
    //_tabBarController.delegate = self;
    _tabBarController.viewControllers=@[first,second];
    
    //默认选择第1个视图选项卡（索引从0开始的）
    _tabBarController.selectedIndex = 0;
    
    //设置TabBarItem
   // UIBarButtonItem *fb=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:nil action:@selector(first:)];
   [(UITabBarItem *)[_tabBarController.tabBar.items objectAtIndex:0] setTitle:@"aa"];
    [(UITabBarItem *)[_tabBarController.tabBar.items objectAtIndex:0] setImage:[UIImage imageNamed:@"b2.png"]];
     [(UITabBarItem *)[_tabBarController.tabBar.items objectAtIndex:1] setTitle:@"bb"];
     [(UITabBarItem *)[_tabBarController.tabBar.items objectAtIndex:1] setImage:[UIImage imageNamed:@"profile_refresh_receipt_icon.png"]];
    
    [self.view addSubview:_tabBarController.view];
    
}
- (IBAction)first:(id)sender {
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
