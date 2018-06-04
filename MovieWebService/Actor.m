//
//  Actor.m
//  MovieWebService
//
//  Created by testDev on 4/11/17.
//  Copyright © 2017 TestCompany. All rights reserved.
//

#import "Actor.h"

@implementation Actor

- (instancetype)initWithName:(NSString *)name
                  screenName:(NSString *)screenName
                   biography:(NSString *)biography
                 dateOfBirth:(NSDate *)dateOfBirth
                 isNominated:(BOOL)isNominated{
    self = [super initWithName:name
                     biography:biography
                   dateOfBirth:dateOfBirth
                   isNominated:isNominated];
    if (self) {
      _screenName = screenName;
    }
    return self;
}

@end
