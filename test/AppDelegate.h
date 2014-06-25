//
//  AppDelegate.h
//  test
//
//  Created by healthplus on 14-5-19.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>
@class mainview;

@interface AppDelegate : UIResponder <UIApplicationDelegate>{
    UIWindow *window;
    mainview *MainView;
    UIImageView *DefaultImageView;
}

@property (retain, nonatomic) IBOutlet mainview *MainView;

@property (retain, nonatomic) IBOutlet UIWindow *window;
@end
