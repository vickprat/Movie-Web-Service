//
//  Actor.m
//  MovieWebService
//
//  Created by Prateek Khandelwal on 6/4/18.
//  Copyright © 2017 Talk.to FZC. All rights reserved.
//

#import "Actor.h"

@implementation Actor

- (instancetype)initWithName:(NSString *)name
                  screenName:(NSString *)screenName
                   biography:(NSString *)biography
                 dateOfBirth:(NSDate *)dateOfBirth
                 isNominated:(BOOL)isNominated{
  NSParameterAssert(screenName);
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
