//
//  MoviesListInteractor.m
//  MovieWebService
//
//  Created by testDev on 11/04/2017.
//  Copyright © 2017 Agoda Services Co. Ltd. All rights reserved.
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
    NSDictionary *directorData = filmData[@"director"];
    Director *director = [[Director alloc] initWithName:directorData[@"name"]
                                              biography:directorData[@"biography"]
                                            dateOfBirth:[NSDate dateWithTimeIntervalSince1970:[directorData[@"dateOfBirth"] doubleValue]]
                                            isNominated:[directorData[@"nominated"] boolValue]];
    Film *film = [[Film alloc] initWithName:[filmData[@"name"] copy]
                                 filmRating:[filmData[@"filmRating"] doubleValue]
                                  languages:[filmData[@"languages"] copy]
                                releaseDate:[NSDate dateWithTimeIntervalSince1970:[filmData[@"releaseDate"] doubleValue]]
                                     rating:[filmData[@"rating"] doubleValue]
                                       cast:((castsList.count > 0) ? castsList : nil)
                                   director:director
                                isNominated:[filmData[@"nominated"] boolValue]];
    filmData = nil;
    [self.output fetchedFilms:@[film]];
  }];
}

@end
