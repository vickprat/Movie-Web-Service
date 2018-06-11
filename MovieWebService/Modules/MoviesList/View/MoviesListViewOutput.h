//
//  MoviesListViewOutput.h
//  MovieWebService
//
//  Created by Prateek Khandelwal on 6/4/18.
//  Copyright © 2017 Talk.to FZC. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MovieListTableViewCellInput;

@protocol MoviesListViewOutput <NSObject>

- (void)viewIsReady;

- (void)didSelectFilmAtRow:(NSUInteger)row;

- (id<MovieListTableViewCellInput>)dataProviderForRow:(NSUInteger)row;

- (NSInteger)numberOfFilms;

@end
