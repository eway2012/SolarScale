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
@synthesize mercuryDiameter = _mercuryDiameter;
@synthesize mercuryDistance = _mercuryDistance;
@synthesize mercuryDistanceM = _mercuryDistanceM;

@synthesize venusDiameter = _venusDiameter;
@synthesize venusDistance = _venusDistance;
@synthesize venusDistanceM = _venusDistanceM;

@synthesize earthDiameter = _earthDiameter;
@synthesize earthDistance = _earthDistance;
@synthesize earthDistanceM = _earthDistanceM;

@synthesize marsDiameter = _marsDiameter;
@synthesize marsDistance = _marsDistance;
@synthesize marsDistanceM = _marsDistanceM;

@synthesize jupiterDiameter = _jupiterDiameter;
@synthesize jupiterDistance = _jupiterDistance;
@synthesize jupiterDistanceM = _jupiterDistanceM;

@synthesize saturnDiameter = _saturnDiameter;
@synthesize saturnDistance = _saturnDistance;
@synthesize saturnDistanceM = _saturnDistanceM;

@synthesize uranusDiameter = _uranusDiameter;
@synthesize uranusDistance = _uranusDistance;
@synthesize uranusDistanceM = _uranusDistanceM;

@synthesize neptuneDiameter = _neptuneDiameter;
@synthesize neptuneDistance = _neptuneDistance;
@synthesize neptuneDistanceM = _neptuneDistanceM;

@synthesize plutoDiameter = _plutoDiameter;
@synthesize plutoDistance = _plutoDistance;
@synthesize plutoDistanceM = _plutoDistanceM;

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
    float mercDiam = (kMercuryDiameter * sunScaleDiameter) / kSunDiameter;
    float mercDist = (kMercuryDistanceFromSun * sunScaleDiameter) / kSunDiameter;
    _mercuryDistanceM = mercDist;
    _mercuryDiameter = [self convertUnitsFromMeters:mercDiam];
    _mercuryDistance = [self convertUnitsFromMeters:mercDist];
    
    float venuDiam = (kVenusDiameter * sunScaleDiameter) / kSunDiameter;
    float venuDist = (kVenusDistanceFromSun * sunScaleDiameter) / kSunDiameter;
    _venusDistanceM = venuDist;
    _venusDiameter = [self convertUnitsFromMeters:venuDiam];
    _venusDistance = [self convertUnitsFromMeters:venuDist];
    
    float eartDiam = (kEarthDiameter * sunScaleDiameter) / kSunDiameter;
    float eartDist = (kEarthDistanceFromSun * sunScaleDiameter) / kSunDiameter;
    _earthDistanceM = eartDist;
    _earthDiameter = [self convertUnitsFromMeters:eartDiam];
    _earthDistance = [self convertUnitsFromMeters:eartDist];
    
    float marsDiam = (kMarsDiameter * sunScaleDiameter) / kSunDiameter;
    float marsDist = (kMarsDistanceFromSun * sunScaleDiameter) / kSunDiameter;
    _marsDistanceM = marsDist;
    _marsDiameter = [self convertUnitsFromMeters:marsDiam];
    _marsDistance = [self convertUnitsFromMeters:marsDist];
    
    float jupiDiam = (kJupiterDiameter * sunScaleDiameter) / kSunDiameter;
    float jupiDist = (kJupiterDistanceFromSun * sunScaleDiameter) / kSunDiameter;
    _jupiterDistanceM = jupiDist;
    _jupiterDiameter = [self convertUnitsFromMeters:jupiDiam];
    _jupiterDistance = [self convertUnitsFromMeters:jupiDist];
    
    float satuDiam = (kSaturnDiameter * sunScaleDiameter) / kSunDiameter;
    float satuDist = (kSaturnDistanceFromSun * sunScaleDiameter) / kSunDiameter;
    _saturnDistanceM = satuDist;
    _saturnDiameter = [self convertUnitsFromMeters:satuDiam];
    _saturnDistance = [self convertUnitsFromMeters:satuDist];
    
    float uranDiam = (kUranusDiameter * sunScaleDiameter) / kSunDiameter;
    float uranDist = (kUranusDistanceFromSun * sunScaleDiameter) / kSunDiameter;
    _uranusDistanceM = uranDist;
    _uranusDiameter = [self convertUnitsFromMeters:uranDiam];
    _uranusDistance = [self convertUnitsFromMeters:uranDist];
    
    float neptDiam = (kNeptuneDiameter * sunScaleDiameter) / kSunDiameter;
    float neptDist = (kNeptuneDistanceFromSun * sunScaleDiameter) / kSunDiameter;
    _neptuneDistanceM = neptDist;
    _neptuneDiameter = [self convertUnitsFromMeters:neptDiam];
    _neptuneDistance = [self convertUnitsFromMeters:neptDist];
    
    float plutDiam = (kPlutoDiameter * sunScaleDiameter) / kSunDiameter;
    float plutDist = (kPlutoDistanceFromSun * sunScaleDiameter) / kSunDiameter;
    _plutoDistanceM = plutDist;
    _plutoDiameter = [self convertUnitsFromMeters:plutDiam];
    _plutoDistance = [self convertUnitsFromMeters:plutDist];
    
    return self;
}

- (NSString *)convertUnitsFromMeters:(float)meters
{
    if (meters < 1) {
        //Centemeter Conversion
        float cm = meters * 100;
        NSString *cmString = [NSString stringWithFormat:@"%.02fcm", cm];
        
        return cmString;
        
    } else if (meters > 1000) {
        //Kilometer Conversion
        float km = meters / 1000;
        NSString *kmString = [NSString stringWithFormat:@"%.02fkm", km];
        
        return kmString;
        
    } else {
        NSString *mString = [NSString stringWithFormat:@"%.02fm", meters];
        
        return mString;
    }
}



@end
