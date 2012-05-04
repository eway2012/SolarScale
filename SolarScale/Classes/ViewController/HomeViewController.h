//
//  ViewController.h
//  SolarScale
//
//  Created by Sean Kladek on 4/30/12.
//  Copyright (c) 2012 The Nerdery. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import "ScaledDistancesModel.h"

@interface HomeViewController : UIViewController <MKMapViewDelegate> {
    ScaledDistancesModel *_scaled;
    UIView *_scalePane;
    UISlider *_sunSizeSlider;
    UILabel *_sunSizeLabel;
}

@property (nonatomic, strong) ScaledDistancesModel *scaled;

@property (nonatomic, weak) IBOutlet MKMapView *mapView;
@property (nonatomic, strong) IBOutlet UIView *scalePane;
@property (nonatomic, weak) IBOutlet UIButton *sidebarButon;
@property (nonatomic, weak) IBOutlet UITextField *locationField;
@property (nonatomic, strong) IBOutlet UISlider *sunSizeSlider;
@property (nonatomic, strong) IBOutlet UILabel *sunSizeLabel;

@property (nonatomic, weak) IBOutlet UILabel *mercuryDiameterLabel;
@property (nonatomic, weak) IBOutlet UILabel *mercuryDistanceLabel;
@property (nonatomic, weak) IBOutlet UILabel *venusDiameterLabel;
@property (nonatomic, weak) IBOutlet UILabel *venusDistanceLabel;
@property (nonatomic, weak) IBOutlet UILabel *earthDiameterLabel;
@property (nonatomic, weak) IBOutlet UILabel *earthDistanceLabel;
@property (nonatomic, weak) IBOutlet UILabel *marsDiameterLabel;
@property (nonatomic, weak) IBOutlet UILabel *marsDistanceLabel;
@property (nonatomic, weak) IBOutlet UILabel *jupiterDiameterLabel;
@property (nonatomic, weak) IBOutlet UILabel *jupiterDistanceLabel;
@property (nonatomic, weak) IBOutlet UILabel *saturnDiameterLabel;
@property (nonatomic, weak) IBOutlet UILabel *saturnDistanceLabel;
@property (nonatomic, weak) IBOutlet UILabel *uranusDiameterLabel;
@property (nonatomic, weak) IBOutlet UILabel *uranusDistanceLabel;
@property (nonatomic, weak) IBOutlet UILabel *neptuneDiameterLabel;
@property (nonatomic, weak) IBOutlet UILabel *neptuneDistanceLabel;
@property (nonatomic, weak) IBOutlet UILabel *plutoDiameterLabel;
@property (nonatomic, weak) IBOutlet UILabel *plutoDistanceLabel;

- (IBAction)openButtonTapped:(UIButton *)sender;
- (IBAction)findLocationFromLocationField:(id)sender;
- (IBAction)setScaleValuesForSunSize;

@end
