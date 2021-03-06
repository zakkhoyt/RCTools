//
//  VWWUtilities.m
//  RC Video
//
//  Created by Zakk Hoyt on 3/10/14.
//  Copyright (c) 2014 Zakk Hoyt. All rights reserved.
//

#import "VWWUtilities.h"
#import <CoreLocation/CoreLocation.h>


const float kFeetInAMeter = 3.28084;

@implementation VWWUtilities

@end

@implementation  VWWUtilities (DateFormatter)

+(NSString*)stringFromDate:(NSDate*)date{
    NSString *dateFormatString = @"EEEE MMMM dd, YYYY @HH:mm";
    NSDateFormatter* dateLocal = [[NSDateFormatter alloc] init];
    [dateLocal setDateFormat:dateFormatString];
    NSString* dateString = [dateLocal stringFromDate:date];
    if(dateString == nil) dateString = @"";
    return dateString;
}

@end

@implementation VWWUtilities (Conversion)
+(float)metersToFeet:(float)meters{
    return meters * kFeetInAMeter;
}
+(float)metersBetweenPointA:(CLLocation*)pointA pointB:(CLLocation*)pointB{
    CLLocationDistance distance = [pointA distanceFromLocation:pointB];
    return fabs((float)distance);
}
+(float)feetBetweenPointA:(CLLocation*)pointA pointB:(CLLocation*)pointB{
    CLLocationDistance distance = [self metersBetweenPointA:pointA pointB:pointB];
    return ((float)(distance) * kFeetInAMeter);
}

@end
