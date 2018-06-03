//
//  MovieListTableViewCell.m
//  MovieWebService
//
//  Created by testDev on 4/11/17.
//  Copyright © 2017 TestCompany. All rights reserved.
//

#import "MovieListTableViewCell.h"
#import "Film.h"

@implementation MovieListTableViewCell

- (void)setupForFilm:(Film *)film {
  self.name.text = film.name;
  NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
  [formatter setDateStyle:NSDateFormatterMediumStyle];
  self.date.text = [formatter stringFromDate:film.releaseDate];
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
  self.filmRating.text = filmRatingText;
  self.rating.text = [[NSNumber numberWithDouble:film.rating] stringValue];
}

@end
