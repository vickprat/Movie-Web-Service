//
//  Film.m
//  MovieWebService
//
//  Created by testDev on 4/11/17.
//  Copyright © 2017 TestCompany. All rights reserved.
//

#import "Film.h"
#import "Actor.h"
#import "Director.h"

@implementation Film

- (instancetype)initWithData:(NSDictionary *)data {
    self = [super init];
    if (self) {
        _filmRating = [data[@"filmRating"] doubleValue];
        _languages = [data[@"languages"] copy];
        _nominated = [data[@"nominated"] boolValue];
        _releaseDate = [NSDate dateWithTimeIntervalSince1970:[data[@"releaseDate"] doubleValue]];
        _name = [data[@"name"] copy];
        _rating = [data[@"rating"] doubleValue];
        _director = [[Director alloc] initWithData:data[@"director"]];
        _director.film = self;
        NSMutableArray *castsList = [[NSMutableArray alloc] init];
        NSArray *castsData = data[@"cast"];
        for (NSDictionary *castData in castsData) {
            Actor *actor = [[Actor alloc] initWithData:castData];
            actor.film = self;
            [castsList addObject:actor];
        }
        _cast = castsList.count > 0 ? castsList : nil;
    }
    return self;
}

@end
