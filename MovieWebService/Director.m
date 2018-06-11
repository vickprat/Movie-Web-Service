//
//  Director.m
//  MovieWebService
//
//  Created by Prateek Khandelwal on 6/4/18.
//  Copyright © 2017 Talk.to FZC. All rights reserved.
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
