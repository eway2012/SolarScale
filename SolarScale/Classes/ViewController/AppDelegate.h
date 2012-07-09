//
//  AppDelegate.h
//  SolarScale
//
//  Created by Sean Kladek on 4/30/12.
//  Copyright (c) 2012 The Nerdery. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HomeViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) HomeViewController *viewController;

@end
