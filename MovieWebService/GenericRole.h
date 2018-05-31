//
//  GenericRole.h
//  MovieWebService
//
//  Created by testDev on 4/11/17.
//  Copyright © 2017 TestCompany. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Film;

@interface GenericRole : NSObject

@property (nonatomic, readonly) NSString *name;
@property (nonatomic, readonly) NSString *biography;
@property (nonatomic, readonly) NSDate *dateOfBirth;
@property (nonatomic, readonly, getter=isNominated) BOOL nominated;
@property (nonatomic, weak) Film *film;

- (instancetype)initWithData:(NSDictionary *)data;

@end
