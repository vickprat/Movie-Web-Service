//
//  Actor.h
//  MovieWebService
//
//  Created by Prateek Khandelwal on 6/4/18.
//  Copyright © 2017 Talk.to FZC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GenericRole.h"

@interface Actor : GenericRole

@property (nonatomic, readonly, copy) NSString *screenName;

- (instancetype)initWithName:(NSString *)name
                  screenName:(NSString *)screenName
                   biography:(NSString *)biography
                 dateOfBirth:(NSDate *)dateOfBirth
                 isNominated:(BOOL)isNominated;

@end
