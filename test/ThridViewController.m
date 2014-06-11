//
//  ThridViewController.m
//  test
//
//  Created by healthplus on 14-6-3.
//  Copyright (c) 2014年 healthplus. All rights reserved.
//

#import "ThridViewController.h"
#import "CustomView.h"

@interface ThridViewController (){
       UIToolbar *toolBar;
}

@end

@implementation ThridViewController

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
    // Do any additional setup after loading the view from its nib.
    //[self.navigationController setNavigationBarHidden:NO];
    
    toolBar = [[UIToolbar alloc] initWithFrame:CGRectMake(0.0, self.view.frame.size.height - toolBar.frame.size.height - 44.0, self.view.frame.size.width, 44.0)];
    [toolBar setBarStyle:UIBarStyleDefault];
    toolBar.autoresizingMask = UIViewAutoresizingFlexibleTopMargin;
 //   [toolBar setItems:[NSArray arrayWithObjects:addButton,cancelButton,nil]];
    [self.view addSubview:toolBar];
    
    
    CustomView *customView = [[CustomView alloc]initWithFrame:CGRectMake(50, 60, 220, 200)];
    customView.backgroundColor=[UIColor whiteColor];
    CGFloat *pa=75;
    customView.pointa=pa;
    [self.view addSubview:customView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)swich:(id)sender {
    UISwitch *switchButton = (UISwitch*)sender;
    BOOL isButtonOn = [switchButton isOn];
    if (isButtonOn) {
        _lab.text=@"事";
    }else {
        _lab.text=@"否";
            }
    
}
- (IBAction)slider:(id)sender {
    
    UISlider *slider = (UISlider *)sender;
    int progressAsInt = (int)roundf(slider.value);
    _sliderLabel.text = [NSString stringWithFormat:@"%d", progressAsInt];
}

- (IBAction)back:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}
@end
