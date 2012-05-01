//
//  ViewController.h
//  SolarScale
//
//  Created by Sean Kladek on 4/30/12.
//  Copyright (c) 2012 The Nerdery. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController {
    UIView *_scalePane;
    UIButton *_sidebarButton;
    UITextField *_locationField;
}
@property (nonatomic, strong) IBOutlet UIView *scalePane;
@property (nonatomic, strong) IBOutlet UIButton *sidebarButon;
@property (nonatomic, strong) IBOutlet UITextField *locationField;

- (IBAction)openButtonTapped:(UIButton *)sender;
- (IBAction)findLocationFromLocationField:(id)sender;

@end
