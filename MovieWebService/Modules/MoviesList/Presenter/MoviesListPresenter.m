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

@interface MoviesListPresenter()

@property (nonatomic) NSArray *movies;

@end

@implementation MoviesListPresenter

- (void)fetchMovies {
  [self.interactor fetchMoviesList];
  [self.view setupInitialState];
}

- (void)didSelectMovie:(Film *)film {
  [self.router loadDetailsForFilm:film];
}

- (void)fetchedMovies:(NSArray *)movies {
  self.movies = movies;
  dispatch_async(dispatch_get_main_queue(), ^{
    [self.view showMoviesList:self.movies];
  });
}

@end
