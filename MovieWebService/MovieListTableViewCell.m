//
//  MovieListTableViewCell.m
//  MovieWebService
//
//  Created by testDev on 4/11/17.
//  Copyright © 2017 TestCompany. All rights reserved.
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
