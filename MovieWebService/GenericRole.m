//
//  GenericRole.m
//  MovieWebService
//
//  Created by Prateek Khandelwal on 6/4/18.
//  Copyright © 2017 Talk.to FZC. All rights reserved.
//

#import "GenericRole.h"

@implementation GenericRole

- (instancetype)initWithName:(NSString *)name
                   biography:(NSString *)biography
                 dateOfBirth:(NSDate *)dateOfBirth
                 isNominated:(BOOL)isNominated {
  NSParameterAssert(name);
  NSParameterAssert(biography);
  NSParameterAssert(dateOfBirth);
    if (self) {
      _name = name;
      _biography = biography;
      _dateOfBirth = dateOfBirth;
      _nominated = isNominated;
    }
    return self;
}

@end
