//
//  ScaledDistancesModel.h
//  SolarScale
//
//  Created by Sean Kladek on 5/1/12.
//  Copyright (c) 2012 The Nerdery. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScaledDistancesModel : NSObject {    
    NSString *_sunDiameter;
    NSString *_mercuryDiameter;
    NSString *_mercuryDistance;
    NSString *_venusDiameter;
    NSString *_venusDistance;
    NSString *_earthDiameter;
    NSString *_earthDistance;
    NSString *_marsDiameter;
    NSString *_marsDistance;
    NSString *_jupiterDiameter;
    NSString *_jupiterDistance;
    NSString *_saturnDiameter;
    NSString *_saturnDistance;
    NSString *_uranusDiameter;
    NSString *_uranusDistance;
    NSString *_neptuneDiameter;
    NSString *_neptuneDistance;
    NSString *_plutoDiameter;
    NSString *_plutoDistance;
}
@property (nonatomic, strong) NSString *sunDiameter;
@property (nonatomic, strong) NSString *mercuryDiameter;
@property (nonatomic, strong) NSString *mercuryDistance;
@property (nonatomic, strong) NSString *venusDiameter;
@property (nonatomic, strong) NSString *venusDistance;
@property (nonatomic, strong) NSString *earthDiameter;
@property (nonatomic, strong) NSString *earthDistance;
@property (nonatomic, strong) NSString *marsDiameter;
@property (nonatomic, strong) NSString *marsDistance;
@property (nonatomic, strong) NSString *jupiterDiameter;
@property (nonatomic, strong) NSString *jupiterDistance;
@property (nonatomic, strong) NSString *saturnDiameter;
@property (nonatomic, strong) NSString *saturnDistance;
@property (nonatomic, strong) NSString *uranusDiameter;
@property (nonatomic, strong) NSString *uranusDistance;
@property (nonatomic, strong) NSString *neptuneDiameter;
@property (nonatomic, strong) NSString *neptuneDistance;
@property (nonatomic, strong) NSString *plutoDiameter;
@property (nonatomic, strong) NSString *plutoDistance;

- (id)valuesForSunSize:(float)sunScaleDiameter;
- (NSString *)convertUnitsFromMeters:(float)meters;

@end
