//
//  ScaledDistancesModel.m
//  SolarScale
//
//  Created by Sean Kladek on 5/1/12.
//  Copyright (c) 2012 The Nerdery. All rights reserved.
//

#import "ScaledDistancesModel.h"
#import "Constants.h"

@implementation ScaledDistancesModel
@synthesize sunDiameter = _sunDiameter;
@synthesize mercuryDiameter = _mercuryDiameter;
@synthesize mercuryDistance = _mercuryDistance;
@synthesize venusDiameter = _venusDiameter;
@synthesize venusDistance = _venusDistance;
@synthesize earthDiameter = _earthDiameter;
@synthesize earthDistance = _earthDistance;
@synthesize marsDiameter = _marsDiameter;
@synthesize marsDistance = _marsDistance;
@synthesize jupiterDiameter = _jupiterDiameter;
@synthesize jupiterDistance = _jupiterDistance;
@synthesize saturnDiameter = _saturnDiameter;
@synthesize saturnDistance = _saturnDistance;
@synthesize uranusDiameter = _uranusDiameter;
@synthesize uranusDistance = _uranusDistance;
@synthesize neptuneDiameter = _neptuneDiameter;
@synthesize neptuneDistance = _neptuneDistance;
@synthesize plutoDiameter = _plutoDiameter;
@synthesize plutoDistance = _plutoDistance;

- (id)init
{        
        _mercuryDiameter = [NSString stringWithFormat:@"%lldkm", kMercuryDiameter];
        _mercuryDistance = [NSString stringWithFormat:@"%lldkm", kMercuryDistanceFromSun];
        
        _venusDiameter = [NSString stringWithFormat:@"%lldkm", kVenusDiameter];
        _venusDistance = [NSString stringWithFormat:@"%lldkm", kVenusDistanceFromSun];
        
        _earthDiameter = [NSString stringWithFormat:@"%lldkm", kEarthDiameter];
        _earthDistance = [NSString stringWithFormat:@"%lldkm", kEarthDistanceFromSun];
        
        _marsDiameter = [NSString stringWithFormat:@"%lldkm", kMarsDiameter];
        _marsDistance = [NSString stringWithFormat:@"%lldkm", kMarsDistanceFromSun];
        
        _jupiterDiameter = [NSString stringWithFormat:@"%lldkm", kJupiterDiameter];
        _jupiterDistance = [NSString stringWithFormat:@"%lldkm", kJupiterDistanceFromSun];
        
        _saturnDiameter = [NSString stringWithFormat:@"%lldkm", kSaturnDiameter];
        _saturnDistance = [NSString stringWithFormat:@"%lldkm", kSaturnDistanceFromSun];
        
        _uranusDiameter = [NSString stringWithFormat:@"%lldkm", kUranusDiameter];
        _uranusDistance = [NSString stringWithFormat:@"%lldkm", kUranusDistanceFromSun];
        
        _neptuneDiameter = [NSString stringWithFormat:@"%lldkm", kNeptuneDiameter];
        _neptuneDistance = [NSString stringWithFormat:@"%lldkm", kNeptuneDistanceFromSun];
        
        _plutoDiameter = [NSString stringWithFormat:@"%lldkm", kPlutoDiameter];
        _plutoDistance = [NSString stringWithFormat:@"%lldkm", kPlutoDistanceFromSun];
    
    
    return self;
}

- (id)valuesForSunSize:(float)sunScaleDiameter
{
//    _sunDiameter = sunScaleDiameter;
//    
//    _mercuryDiameter = (kMercuryDiameter * sunScaleDiameter) / kSunDiameter;
//    _mercuryDistance = (kMercuryDistanceFromSun * sunScaleDiameter) / kSunDiameter;
//    _mercuryDiameter = [self convertUnitsFromMeters:_mercuryDiameter];
//    _mercuryDistance = [self convertUnitsFromMeters:_mercuryDistance];
//    
//    _venusDiameter = (kVenusDiameter * sunScaleDiameter) / kSunDiameter;
//    _venusDistance = (kVenusDistanceFromSun * sunScaleDiameter) / kSunDiameter;
//    
//    _earthDiameter = (kEarthDiameter * sunScaleDiameter) / kSunDiameter;
//    _earthDistance = (kEarthDistanceFromSun * sunScaleDiameter) / kSunDiameter;
//    
//    _marsDiameter = (kMarsDiameter * sunScaleDiameter) / kSunDiameter;
//    _marsDistance = (kMarsDistanceFromSun * sunScaleDiameter) / kSunDiameter;
//    
//    _jupiterDiameter = (kJupiterDiameter * sunScaleDiameter) / kSunDiameter;
//    _jupiterDistance = (kJupiterDistanceFromSun * sunScaleDiameter) / kSunDiameter;
//    
//    _saturnDiameter = (kSaturnDiameter * sunScaleDiameter) / kSunDiameter;
//    _saturnDistance = (kSaturnDistanceFromSun * sunScaleDiameter) / kSunDiameter;
//    
//    _uranusDiameter = (kUranusDiameter * sunScaleDiameter) / kSunDiameter;
//    _uranusDistance = (kUranusDistanceFromSun * sunScaleDiameter) / kSunDiameter;
//    
//    _neptuneDiameter = (kNeptuneDiameter * sunScaleDiameter) / kSunDiameter;
//    _neptuneDistance = (kNeptuneDistanceFromSun * sunScaleDiameter) / kSunDiameter;
//    
//    _plutoDiameter = (kPlutoDiameter * sunScaleDiameter) / kSunDiameter;
//    _plutoDistance = (kPlutoDistanceFromSun * sunScaleDiameter) / kSunDiameter;
//    
    
    return self;
}

- (NSString *)convertUnitsFromMeters:(float)meters
{
//    if (meters < 1) {
//        //Centemeter Conversion
//        float cm = meters * 100;
//        return cm;
//        
//    } else if (meters > 1000) {
//        //Kilometer Conversion
//        float km = meters / 1000;
//        return km;
//        
//    } else {
//        return meters;
//    }
}



@end
