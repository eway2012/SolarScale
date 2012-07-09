//
//  ScaledDistancesModel.h
//  SolarScale
//
//  Created by Sean Kladek on 5/1/12.
//  Copyright (c) 2012 The Nerdery. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScaledDistancesModel : NSObject {    
    NSString *_mercuryDiameter;
    NSString *_mercuryDistance;
    float _mercuryDistanceM;
    
    NSString *_venusDiameter;
    NSString *_venusDistance;
    float _venusDistanceM;

    NSString *_earthDiameter;
    NSString *_earthDistance;
    float _earthDistanceM;

    NSString *_marsDiameter;
    NSString *_marsDistance;
    float _marsDistanceM;

    NSString *_jupiterDiameter;
    NSString *_jupiterDistance;
    float _jupiterDistanceM;

    NSString *_saturnDiameter;
    NSString *_saturnDistance;
    float _saturnDistanceM;

    NSString *_uranusDiameter;
    NSString *_uranusDistance;
    float _uranusDistanceM;

    NSString *_neptuneDiameter;
    NSString *_neptuneDistance;
    float _neptuneDistanceM;

    NSString *_plutoDiameter;
    NSString *_plutoDistance;
    float _plutoDistanceM;
}
@property (nonatomic, strong) NSString *mercuryDiameter;
@property (nonatomic, strong) NSString *mercuryDistance;
@property (nonatomic, assign) float mercuryDistanceM;

@property (nonatomic, strong) NSString *venusDiameter;
@property (nonatomic, strong) NSString *venusDistance;
@property (nonatomic, assign) float venusDistanceM;

@property (nonatomic, strong) NSString *earthDiameter;
@property (nonatomic, strong) NSString *earthDistance;
@property (nonatomic, assign) float earthDistanceM;

@property (nonatomic, strong) NSString *marsDiameter;
@property (nonatomic, strong) NSString *marsDistance;
@property (nonatomic, assign) float marsDistanceM;

@property (nonatomic, strong) NSString *jupiterDiameter;
@property (nonatomic, strong) NSString *jupiterDistance;
@property (nonatomic, assign) float jupiterDistanceM;

@property (nonatomic, strong) NSString *saturnDiameter;
@property (nonatomic, strong) NSString *saturnDistance;
@property (nonatomic, assign) float saturnDistanceM;

@property (nonatomic, strong) NSString *uranusDiameter;
@property (nonatomic, strong) NSString *uranusDistance;
@property (nonatomic, assign) float uranusDistanceM;

@property (nonatomic, strong) NSString *neptuneDiameter;
@property (nonatomic, strong) NSString *neptuneDistance;
@property (nonatomic, assign) float neptuneDistanceM;

@property (nonatomic, strong) NSString *plutoDiameter;
@property (nonatomic, strong) NSString *plutoDistance;
@property (nonatomic, assign) float plutoDistanceM;

- (id)valuesForSunSize:(float)sunScaleDiameter;
- (NSString *)convertUnitsFromMeters:(float)meters;

@end
