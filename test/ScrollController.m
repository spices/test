//
//  ScrollController.m
//  test
//
//  Created by healthplus on 14-5-29.
//  Copyright (c) 2014年 healthplus. All rights reserved.
//

#import "ScrollController.h"
#define imgcount 5
@class ScrollController;

@interface ScrollController ()<UIScrollViewDelegate>
{
    UIPageControl *_pageControl;
}
@end

@implementation ScrollController

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
    
    NSLog(@"h");
      
   }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)scroll1:(id)sender {
    
    //定义UIScrollView，大小为屏幕大小
    UIScrollView *scroll=[[UIScrollView alloc]init];
    scroll.frame=CGRectMake(0, 40,320, 440);
    //scroll.backgroundColor=[UIColor redColor];
    [self.view addSubview:scroll];
    
    //定义图片
    UIImageView *imgview=[[UIImageView alloc]init];
    imgview.image=[UIImage imageNamed:@"g1.jpg"];
    CGFloat imgw=imgview.image.size.width;
    CGFloat imgh=imgview.image.size.height;
    imgview.frame=CGRectMake(0, 0, imgw,imgh);
    
    
    //把图片放进UIScrollView
    [scroll addSubview:imgview];
    
    //设置UIScrollView滚动最大范围，为图片大小
    scroll.contentSize=CGSizeMake(imgw, imgh);
    
    //隐藏滚动条
    scroll.showsHorizontalScrollIndicator=NO;
    scroll.showsVerticalScrollIndicator=NO;
    
    //取消弹簧效果
    scroll.bounces=NO;
    // Do any additional setup after loading the view from its nib.

}

- (IBAction)scroll2:(id)sender {
    
    //定义UIScrollView，大小为屏幕大小
    UIScrollView *scroll=[[UIScrollView alloc]init];
    scroll.frame=CGRectMake(0, 40, 320, 480);
    [self.view addSubview:scroll];
    
    //定义图片

    CGFloat imgw=self.view.frame.size.width;
    CGFloat imgh=self.view.frame.size.height;
    
    for (int i=0; i<imgcount; i++) {
        NSLog(@"%d",i);
        
        //创建图片视图
        UIImageView *imgview=[[UIImageView alloc]init];
        NSString *imgname=[NSString stringWithFormat:@"0%d.jpg",i+1];
        imgview.image=[UIImage imageNamed:imgname];
        
        //设置view
        imgview.frame=CGRectMake(i*imgw, 0, imgw, imgh);
        
        [scroll addSubview:imgview];
    }
   
    
    [self.view addSubview:scroll];
    
    scroll.contentSize=CGSizeMake(imgcount*imgw, imgh);
    
    //隐藏滚动条
    scroll.showsHorizontalScrollIndicator=NO;
    scroll.showsVerticalScrollIndicator=NO;
    //设置自动翻到页面占据大的一页
    scroll.pagingEnabled=YES;
    
    //设置代理，当图片滚动时启用（设置页数）
    scroll.delegate=self;
    
    
    // 添加PageControl
    UIPageControl *uipage=[[UIPageControl alloc]init];
    uipage.center=CGPointMake(imgw*0.5, imgh-20);
    uipage.bounds=CGRectMake(0, 0, 150, 50);
    
    //页数
    uipage.numberOfPages=imgcount;
    
    // 设置非选中页的圆点颜色
    uipage.pageIndicatorTintColor = [UIColor redColor];
    // 设置选中页的圆点颜色
    uipage.currentPageIndicatorTintColor = [UIColor blueColor];
    
    // 禁止默认的点击功能
    
    uipage.enabled=NO;
    
    [self.view addSubview:uipage];
    _pageControl=uipage;
    
}

- (IBAction)change:(id)sender {
    if([sender selectedSegmentIndex]==0){
     [self scroll1:sender];
    }else if([sender selectedSegmentIndex]==1){
     [self scroll2:sender];
    }
}



#pragma mark - UIScrollView的代理方法  <UIScrollViewDelegate>
#pragma mark 当scrollView正在滚动的时候调用
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    int page=scrollView.contentOffset.x/scrollView.frame.size.width;
    _pageControl.currentPage=page;
    
}



@end
