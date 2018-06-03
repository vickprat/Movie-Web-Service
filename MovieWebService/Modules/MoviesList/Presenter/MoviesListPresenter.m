//
//  MoviesListPresenter.m
//  MovieWebService
//
//  Created by testDev on 11/04/2017.
//  Copyright © 2017 Agoda Services Co. Ltd. All rights reserved.
//

#import "MoviesListPresenter.h"
#import "MoviesListViewInput.h"
#import "MoviesListInteractorOutput.h"
#import "MoviesListInteractorInput.h"
#import "MoviesListRouterInput.h"
#import "Film.h"

@implementation MoviesListPresenter

- (void)viewIsReady {
  [self.interactor fetchMoviesList];
}

- (void)didSelectMovie:(Film *)film {
  [self.router loadDetailsForFilm:film];
}

- (void)fetchedMovies:(NSArray *)movies {
  dispatch_async(dispatch_get_main_queue(), ^{
    [self.view showMoviesList:movies];
  });
}

@end
