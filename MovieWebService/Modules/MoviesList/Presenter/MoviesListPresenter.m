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
#import "MovieListTableViewCellInput.h"

@interface MovieListTableViewCellDataProvider:NSObject <MovieListTableViewCellInput>

@property (strong) NSString *filmName;
@property (strong) NSString *dateString;
@property (strong) NSString *filmRating;
@property (strong) NSString *rating;

@end

@implementation MovieListTableViewCellDataProvider
@end

@interface MoviesListPresenter()

@property (nonatomic) NSArray *films;

@end

@implementation MoviesListPresenter

- (void)viewIsReady {
  [self.interactor fetchFilmsList];
}

- (void)didSelectFilmAtRow:(NSUInteger)row {
  [self.router loadDetailsForFilm:self.films[row]];
}

- (id<MovieListTableViewCellInput>)dataProviderForRow:(NSUInteger)row {
  Film *film = self.films[row];
  MovieListTableViewCellDataProvider *dataProvider = [MovieListTableViewCellDataProvider new];
  dataProvider.filmName = film.name;
  dataProvider.dateString = [self dataStringFromFilm:film];
  dataProvider.filmRating = [self filmRatingTextFromFilm:film];
  dataProvider.rating = [self ratingTextFromFilm:film];
  return dataProvider;
}

- (NSString *)dataStringFromFilm:(Film *)film {
  NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
  [formatter setDateStyle:NSDateFormatterMediumStyle];
  return [formatter stringFromDate:film.releaseDate];
}

- (NSString *)filmRatingTextFromFilm:(Film *)film {
  NSString *filmRatingText;
  switch (film.filmRating) {
    case G:
      filmRatingText = @"G";
    case PG:
      filmRatingText = @"PG";
    case PG13:
      filmRatingText = @"PG13";
    case R:
      filmRatingText = @"R";
    default:
      break;
  }
  return filmRatingText;
}

- (NSString *)ratingTextFromFilm:(Film *)film {
  return [[NSNumber numberWithDouble:film.rating] stringValue];
}

- (NSInteger)numberOfFilms {
  return self.films.count;
}

- (void)fetchedFilms:(NSArray *)films {
  self.films = films;
  [self.view showFilmsList];
}

@end
