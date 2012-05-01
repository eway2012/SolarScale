//
//  ViewController.m
//  SolarScale
//
//  Created by Sean Kladek on 4/30/12.
//  Copyright (c) 2012 The Nerdery. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController
@synthesize scalePane = _scalePane;
@synthesize sidebarButon = _sidebarButton;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [_sidebarButton setBackgroundImage:[UIImage imageNamed:@"sidebarBtnSelected"]
                              forState:UIControlStateHighlighted | UIControlStateSelected];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return interfaceOrientation == UIInterfaceOrientationLandscapeLeft || interfaceOrientation == UIInterfaceOrientationLandscapeRight;
}

#pragma mark - IBAction Methods

- (IBAction)openButtonTapped:(UIButton *)sender
{
    if (![sender isSelected]){
        
        [self.view addSubview:_scalePane];
        _scalePane.frame = CGRectMake(1024, 0, _scalePane.frame.size.width, _scalePane.frame.size.height);
        
        [UIView animateWithDuration:0.5 animations:^(void) {
            sender.transform = CGAffineTransformMakeTranslation(-950, 0);
            _scalePane.transform = CGAffineTransformMakeTranslation(-950, 0);
            
        }completion:^(BOOL finished){
            [sender setSelected:YES];
        } ];
        
    } else {
        [UIView animateWithDuration:0.5 animations:^(void) {
            sender.transform = CGAffineTransformMakeTranslation(0, 0);
            _scalePane.transform = CGAffineTransformMakeTranslation(0, 0);
            
        }completion:^(BOOL finished){
            [_scalePane removeFromSuperview];
            [sender setSelected:NO];
        } ];
        
    }
}

- (IBAction)findLocationFromLocationField:(id)sender
{
    
}

@end
