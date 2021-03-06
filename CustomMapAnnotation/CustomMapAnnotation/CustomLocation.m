//
//  CustomLocation.m
//  CustomMapAnnotation
//
//  Created by mike.tihonchik on 4/9/14.
//  Copyright (c) 2014 mike.tihonchik. All rights reserved.
//

#import "CustomLocation.h"

@implementation CustomLocation

- (id)initWithJSON:(NSDictionary*)json {
    self = [super init];
    if (self) {
        self.name = [self stringFromJSONValue:[json objectForKey:@"locationName"]];
        self.address = [self stringFromJSONValue:[json objectForKey:@"address"]];
        self.city = [self stringFromJSONValue:[json objectForKey:@"city"]];
        self.phoneNumber = [self stringFromJSONValue:[json objectForKey:@"phoneNumber"]];
        self.latitude = [self stringFromJSONValue:[json objectForKey:@"latitude"]];
        self.longitude = [self stringFromJSONValue:[json objectForKey:@"longitude"]];
        self.locationId = [self stringFromJSONValue:[json objectForKey:@"locationId"]];
        self.imageName = [self stringFromJSONValue:[json objectForKey:@"imageName"]];
    }
    return self;
}

- (NSString*)stringFromJSONValue:(NSObject*)jsonValue {
    
    if ([jsonValue isKindOfClass:NSString.class])
        return (NSString*)jsonValue;
    else if ([jsonValue isKindOfClass:NSNumber.class])
        return [((NSNumber*)jsonValue) stringValue];
    else
        return @"<null>";
}

@end
