//
//  MoviesListRouterInput.h
//  MovieWebService
//
//  Created by Prateek Khandelwal on 6/4/18.
//  Copyright © 2017 Talk.to FZC. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Film;

@protocol MoviesListRouterInput <NSObject>

- (void)loadDetailsForFilm:(Film *)film;

@end
