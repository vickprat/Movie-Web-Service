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
#import "MovieWebService.h"

@implementation MoviesListInteractor

- (void)fetchFilmsList {
  MovieWebService *movieWebService = [MovieWebService new];
  [movieWebService getFilmDataWithCallback:^(NSDictionary *filmData) {
    Film *film = [[Film alloc] initWithData:filmData];
    filmData = nil;
    [self.output fetchedFilms:@[film]];
  }];
}

@end
