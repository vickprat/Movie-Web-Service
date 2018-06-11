//
//  GenericRole.h
//  MovieWebService
//
//  Created by Prateek Khandelwal on 6/4/18.
//  Copyright © 2017 Talk.to FZC. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Film;

@interface GenericRole : NSObject

@property (nonatomic, readonly, copy) NSString *name;
@property (nonatomic, readonly, copy) NSString *biography;
@property (nonatomic, readonly) NSDate *dateOfBirth;
@property (nonatomic, readonly, getter=isNominated) BOOL nominated;
@property (nonatomic, weak) Film *film;

- (instancetype)initWithName:(NSString *)name
                   biography:(NSString *)biography
                 dateOfBirth:(NSDate *)dateOfBirth
                 isNominated:(BOOL)isNominated;

@end
