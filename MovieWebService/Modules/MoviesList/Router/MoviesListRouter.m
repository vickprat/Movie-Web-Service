//
//  MoviesListRouter.m
//  MovieWebService
//
//  Created by Prateek Khandelwal on 6/4/18.
//  Copyright © 2017 Talk.to FZC. All rights reserved.
//

#import "MoviesListRouter.h"
#import <UIKit/UIKit.h>
#import "MoviesListRouterInput.h"
#import "Film.h"
#import "MovieWebService-Swift.h"

@interface MoviesListRouter() <MoviesListRouterInput>

@end

@implementation MoviesListRouter

- (void)loadDetailsForFilm:(Film *)film {
  DetailsModuleBuilder *detailsBuilder = [DetailsModuleBuilder new];
  [self.viewController.navigationController pushViewController:[detailsBuilder buildWith:film] animated:YES];
}

@end
