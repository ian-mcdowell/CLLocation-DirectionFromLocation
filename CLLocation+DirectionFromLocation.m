//
//  CLLocation+DirectionFromLocation.m
//  MyState
//
//  Created by McDowell, Ian J [ITACD] on 12/16/14.
//  Copyright (c) 2014 Iowa State University. All rights reserved.
//

#import "CLLocation+DirectionFromLocation.h"

@implementation CLLocation (DirectionFromLocation)

- (CLLocationCardinalDirection)directionFromLocation:(CLLocation *)location {
    CLLocationDegrees latA = self.coordinate.latitude;
    CLLocationDegrees lonA = self.coordinate.longitude;
    
    CLLocationDegrees latB = location.coordinate.latitude;
    CLLocationDegrees lonB = location.coordinate.longitude;
    
    float latDiff = latA - latB;
    float lonDiff = lonA - lonB;
    
    float sl = lonDiff / latDiff;
    if (ABS(sl) > 1.9) {
        // only east or west
        if (lonDiff > 0) {
            // east
            return CLLocationCardinalDirectionEast;
        } else {
            return CLLocationCardinalDirectionWest;
        }
    } else if (ABS(sl) < 0.1) {
        // only north or south
        if (latDiff > 0) {
            // north
            return CLLocationCardinalDirectionNorth;
        } else {
            return CLLocationCardinalDirectionSouth;
        }
    } else {
        // combination
        bool north = latDiff > 0;
        bool east = lonDiff > 0;
        if (north && east) return CLLocationCardinalDirectionNorthEast;
        if (north && !east) return CLLocationCardinalDirectionNorthWest;
        if (!north && east) return CLLocationCardinalDirectionSouthEast;
        if (!north && !east) return CLLocationCardinalDirectionSouthWest;
    }
    return 0;
}

@end
