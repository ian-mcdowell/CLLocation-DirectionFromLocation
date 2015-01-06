//
//  CLLocation+DirectionFromLocation.h
//  MyState
//
//  Created by McDowell, Ian J [ITACD] on 12/16/14.
//  Copyright (c) 2014 Iowa State University. All rights reserved.
//

#import <CoreLocation/CoreLocation.h>

typedef enum : NSUInteger {
    CLLocationCardinalDirectionNorth,
    CLLocationCardinalDirectionSouth,
    CLLocationCardinalDirectionEast,
    CLLocationCardinalDirectionWest,
    CLLocationCardinalDirectionNorthEast,
    CLLocationCardinalDirectionNorthWest,
    CLLocationCardinalDirectionSouthEast,
    CLLocationCardinalDirectionSouthWest
} CLLocationCardinalDirection;

@interface CLLocation (CardinalDirectionFromLocation)

- (CLLocationCardinalDirection)directionFromLocation:(CLLocation *)location;

@end
