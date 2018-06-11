//
//  MovieListTableViewCell.m
//  MovieWebService
//
//  Created by Prateek Khandelwal on 6/4/18.
//  Copyright © 2017 Talk.to FZC. All rights reserved.
//

#import "MovieListTableViewCell.h"
#import "MovieListTableViewCellInput.h"

@implementation MovieListTableViewCell

- (void)setupWithDataProvider:(id<MovieListTableViewCellInput>)dataProvider {
  self.name.text = dataProvider.filmName;
  self.date.text = dataProvider.dateString;
  self.filmRating.text = dataProvider.filmRating;
  self.rating.text = dataProvider.rating;
}

@end
