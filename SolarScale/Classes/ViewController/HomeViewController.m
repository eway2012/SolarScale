//
//  ViewController.m
//  SolarScale
//
//  Created by Sean Kladek on 4/30/12.
//  Copyright (c) 2012 The Nerdery. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

- (void)setScaleValues;
- (void)drawCirclesForSunSize;

@end

@implementation HomeViewController
@synthesize scaled = _scaled;

@synthesize mapView = _mapView;
@synthesize scalePane = _scalePane;
@synthesize sidebarButon = _sidebarButton;
@synthesize locationField = _locationField;
@synthesize sunSizeLabel = _sunSizeLabel;
@synthesize sunSizeSlider = _sunSizeSlider;

@synthesize mercuryDiameterLabel = _mercuryDiameterLabel;
@synthesize mercuryDistanceLabel = _mercuryDistanceLabel;
@synthesize venusDiameterLabel = _venusDiameterLabel;
@synthesize venusDistanceLabel = _venusDistanceLabel;
@synthesize earthDiameterLabel = _earthDiameterLabel;
@synthesize earthDistanceLabel = _earthDistanceLabel;
@synthesize marsDiameterLabel = _marsDiameterLabel;
@synthesize marsDistanceLabel = _marsDistanceLabel;
@synthesize jupiterDiameterLabel = _jupiterDiameterLabel;
@synthesize jupiterDistanceLabel = _jupiterDistanceLabel;
@synthesize saturnDiameterLabel = _saturnDiameterLabel;
@synthesize saturnDistanceLabel = _saturnDistanceLabel;
@synthesize uranusDiameterLabel = _uranusDiameterLabel;
@synthesize uranusDistanceLabel = _uranusDistanceLabel;
@synthesize neptuneDiameterLabel = _neptuneDiameterLabel;
@synthesize neptuneDistanceLabel = _neptuneDistanceLabel;
@synthesize plutoDiameterLabel = _plutoDiameterLabel;
@synthesize plutoDistanceLabel = _plutoDistanceLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
        
    _scaled = [[ScaledDistancesModel alloc] init];
    [self setScaleValues];
    
    _sunSizeSlider.enabled = NO;
    
    [_sidebarButton setBackgroundImage:[UIImage imageNamed:@"sidebarBtnSelected"]
                              forState:UIControlStateHighlighted | UIControlStateSelected];
}

- (void)viewDidUnload
{
    [super viewDidUnload];

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
            _sunSizeSlider.enabled = YES;
            
            [_mapView removeAnnotations:_mapView.annotations];
            [_mapView removeOverlays:_mapView.overlays];
                        
            MKPlacemark *placemark = [placemarks objectAtIndex:0];
            
            MKPointAnnotation *pointAnnotation = [[MKPointAnnotation alloc] init];
            pointAnnotation.coordinate = placemark.location.coordinate;
            [_mapView addAnnotation:pointAnnotation];
            
            MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(placemark.region.center, placemark.region.radius, placemark.region.radius);
            [_mapView setRegion:region animated:YES];
        }
    }];
    
}

- (void)drawCirclesForSunSize
{
    [_mapView removeOverlays:_mapView.overlays];
    
    MKPointAnnotation *centerPoint = [_mapView.annotations objectAtIndex:0];
        
    MKCircle *mercCircle = [MKCircle circleWithCenterCoordinate:centerPoint.coordinate radius:_scaled.mercuryDistanceM];
    [_mapView addOverlay:mercCircle];
    
    MKCircle *venuCircle = [MKCircle circleWithCenterCoordinate:centerPoint.coordinate radius:_scaled.venusDistanceM];
    [_mapView addOverlay:venuCircle];
    
    MKCircle *eartCircle = [MKCircle circleWithCenterCoordinate:centerPoint.coordinate radius:_scaled.earthDistanceM];
    [_mapView addOverlay:eartCircle];
    
    MKCircle *marsCircle = [MKCircle circleWithCenterCoordinate:centerPoint.coordinate radius:_scaled.marsDistanceM];
    [_mapView addOverlay:marsCircle];
    
    MKCircle *jupiCircle = [MKCircle circleWithCenterCoordinate:centerPoint.coordinate radius:_scaled.jupiterDistanceM];
    [_mapView addOverlay:jupiCircle];
    
    MKCircle *satuCircle = [MKCircle circleWithCenterCoordinate:centerPoint.coordinate radius:_scaled.saturnDistanceM];
    [_mapView addOverlay:satuCircle];
    
    MKCircle *uranCircle = [MKCircle circleWithCenterCoordinate:centerPoint.coordinate radius:_scaled.uranusDistanceM];
    [_mapView addOverlay:uranCircle];
    
    MKCircle *neptCircle = [MKCircle circleWithCenterCoordinate:centerPoint.coordinate radius:_scaled.neptuneDistanceM];
    [_mapView addOverlay:neptCircle];
    
    MKCircle *plutCircle = [MKCircle circleWithCenterCoordinate:centerPoint.coordinate radius:_scaled.plutoDistanceM];
    [_mapView addOverlay:plutCircle];
    
    CLLocationDistance latDistance = _scaled.plutoDistanceM;
    CLLocationDistance longDistance = (3 * latDistance) / 4;
    
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(centerPoint.coordinate, latDistance, longDistance);
    [_mapView setRegion:region animated:YES];
}

- (IBAction)setScaleValuesForSunSize
{
    float sunSize = [_sunSizeSlider value];
    
    _sunSizeLabel.text = [NSString stringWithFormat:@"%.1fm", sunSize];
        
    [_scaled valuesForSunSize:sunSize];
    
    [self setScaleValues];
    [self drawCirclesForSunSize];
}

#pragma mark - Map View Delegate Methods
- (MKOverlayView *)mapView:(MKMapView *)mapView viewForOverlay:(id<MKOverlay>)overlay
{
    MKCircleView* circleView = [[MKCircleView alloc] initWithOverlay:overlay];
    circleView.strokeColor = [UIColor redColor];
    return circleView;
}

- (void)setScaleValues
{
    _mercuryDiameterLabel.text =  _scaled.mercuryDiameter;
    _mercuryDistanceLabel.text =  _scaled.mercuryDistance;
    _venusDiameterLabel.text =    _scaled.venusDiameter;
    _venusDistanceLabel.text =    _scaled.venusDistance;
    _earthDiameterLabel.text =    _scaled.earthDiameter;
    _earthDistanceLabel.text =    _scaled.earthDistance;
    _marsDiameterLabel.text =     _scaled.marsDiameter;
    _marsDistanceLabel.text =     _scaled.marsDistance;
    _jupiterDiameterLabel.text =  _scaled.jupiterDiameter;
    _jupiterDistanceLabel.text =  _scaled.jupiterDistance;
    _saturnDiameterLabel.text =   _scaled.saturnDiameter;
    _saturnDistanceLabel.text =   _scaled.saturnDistance;
    _uranusDiameterLabel.text =   _scaled.uranusDiameter;
    _uranusDistanceLabel.text =   _scaled.uranusDistance;
    _neptuneDiameterLabel.text =  _scaled.neptuneDiameter;
    _neptuneDistanceLabel.text =  _scaled.neptuneDistance;
    _plutoDiameterLabel.text =    _scaled.plutoDiameter;
    _plutoDistanceLabel.text =    _scaled.plutoDistance;
}

@end
