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

- (instancetype)initWithName:(NSString *)name
                  filmRating:(FilmRating)filmRating
                   languages:(NSArray *)languages
                 releaseDate:(NSDate *)releaseDate
                      rating:(double)rating
                        cast:(nullable NSArray <Actor*> *)cast
                    director:(Director *)director
                 isNominated:(BOOL)isNominated {
  NSParameterAssert(name);
  NSParameterAssert(filmRating);
  NSParameterAssert(languages);
  NSParameterAssert(releaseDate);
  NSParameterAssert(rating);
  NSParameterAssert(director);
  self = [super init];
  if (self) {
    _filmRating = filmRating;
    _languages = languages;
    _nominated = isNominated;
    _releaseDate = releaseDate;
    _name = name;
    _rating = rating;
    _director = director;
    _director.film = self;
    _cast = cast;
    for (Actor *actor in _cast) {
      actor.film = self;
    }
  }
  return self;
}

@end
