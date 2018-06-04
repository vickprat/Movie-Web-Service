//
//  Director.m
//  MovieWebService
//
//  Created by testDev on 4/11/17.
//  Copyright © 2017 TestCompany. All rights reserved.
//

#import "Director.h"

@implementation Director

- (instancetype)initWithName:(NSString *)name
                   biography:(NSString *)biography
                 dateOfBirth:(NSDate *)dateOfBirth
                 isNominated:(BOOL)isNominated {
    self = [super initWithName:name
                     biography:biography
                   dateOfBirth:dateOfBirth
                   isNominated:isNominated];
    return self;
}

@end
