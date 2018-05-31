//
//  GenericRole.m
//  MovieWebService
//
//  Created by testDev on 4/11/17.
//  Copyright © 2017 TestCompany. All rights reserved.
//

#import "GenericRole.h"

@implementation GenericRole

- (instancetype)initWithData:(NSDictionary *)data {
    if (self) {
        _name = data[@"name"];
        _biography = data[@"biography"];
        _dateOfBirth = [NSDate dateWithTimeIntervalSince1970:[data[@"dateOfBirth"] doubleValue]];
        _nominated = [data[@"nominated"] boolValue];
    }
    return self;
}

@end
