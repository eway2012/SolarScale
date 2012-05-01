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
@synthesize mapView = _mapView;
@synthesize scalePane = _scalePane;
@synthesize sidebarButon = _sidebarButton;
@synthesize locationField = _locationField;

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
    CLGeocoder *geocoder = [[CLGeocoder alloc] init];
    [geocoder geocodeAddressString:[_locationField text] completionHandler:^(NSArray *placemarks, NSError *error) {
        if (error) {
            NSLog(@"Error while geocoding");
        } else {
            
            MKPlacemark *placemark = [placemarks objectAtIndex:0];
            
            MKPointAnnotation *pointAnnotation = [[MKPointAnnotation alloc] init];
            pointAnnotation.coordinate = placemark.location.coordinate;
            [_mapView addAnnotation:pointAnnotation];
            
            MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(placemark.region.center, placemark.region.radius, placemark.region.radius);
            [_mapView setRegion:region animated:YES];
        }
    }];
    
}

- (IBAction)drawCircleForSunSize:(id)sender
{
    MKPointAnnotation *centerPoint = [_mapView.annotations objectAtIndex:0];
    
    MKCircle *circle = [MKCircle circleWithCenterCoordinate:centerPoint.coordinate radius:9000];
    [_mapView addOverlay:circle];
}

- (MKOverlayView *)mapView:(MKMapView *)mapView viewForOverlay:(id<MKOverlay>)overlay
{
    MKCircleView* circleView = [[MKCircleView alloc] initWithOverlay:overlay];
    circleView.strokeColor = [UIColor redColor];
    return circleView;
}

@end
