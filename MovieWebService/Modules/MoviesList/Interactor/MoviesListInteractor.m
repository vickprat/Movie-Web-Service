//
//  MoviesListInteractor.m
//  MovieWebService
//
//  Created by Prateek Khandelwal on 6/4/18.
//  Copyright © 2017 Talk.to FZC. All rights reserved.
//

#import "MoviesListInteractor.h"
#import "MoviesListInteractorOutput.h"
#import "Film.h"
#import "Director.h"
#import "MovieWebService.h"

@implementation MoviesListInteractor

- (void)fetchFilmsList {
  MovieWebService *movieWebService = [MovieWebService new];
  [movieWebService getFilmDataWithCallback:^(NSDictionary *filmData) {
    NSArray *castsList = [self castsListWithFilmData:filmData];
    Director *director = [self createDirectorWithFilmData:filmData];
    Film *film = [self createFilmWithFilmData:filmData director:director cast:castsList];
    filmData = nil;
    [self.output fetchedFilms:@[film]];
  }];
}

- (NSArray *)castsListWithFilmData:(NSDictionary *)filmData {
  NSMutableArray *castsList = [[NSMutableArray alloc] init];
  NSArray *castsData = filmData[@"cast"];
  for (NSDictionary *castData in castsData) {
    Actor *actor = [[Actor alloc] initWithName:castData[@"name"]
                                    screenName:castData[@"screenName"]
                                     biography:castData[@"biography"]
                                   dateOfBirth:[NSDate dateWithTimeIntervalSince1970:[castData[@"dateOfBirth"] doubleValue]]
                                   isNominated:[castData[@"nominated"] boolValue]];
    [castsList addObject:actor];
  }
  return castsList;
}

- (Director *)createDirectorWithFilmData:(NSDictionary *)filmData {
  NSDictionary *directorData = filmData[@"director"];
  return [[Director alloc] initWithName:directorData[@"name"]
                              biography:directorData[@"biography"]
                            dateOfBirth:[NSDate dateWithTimeIntervalSince1970:[directorData[@"dateOfBirth"] doubleValue]]
                            isNominated:[directorData[@"nominated"] boolValue]];
}

- (Film *)createFilmWithFilmData:(NSDictionary *)filmData
                        director:(Director *)director
                            cast:(NSArray *)castsList {
  return [[Film alloc] initWithName:filmData[@"name"]
                         filmRating:[filmData[@"filmRating"] doubleValue]
                          languages:filmData[@"languages"]
                        releaseDate:[NSDate dateWithTimeIntervalSince1970:[filmData[@"releaseDate"] doubleValue]]
                             rating:[filmData[@"rating"] doubleValue]
                               cast:((castsList.count > 0) ? castsList : nil)
                           director:director
                        isNominated:[filmData[@"nominated"] boolValue]];
}

@end
