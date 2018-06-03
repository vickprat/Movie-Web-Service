//
//  MoviesListRouter.m
//  MovieWebService
//
//  Created by testDev on 11/04/2017.
//  Copyright © 2017 Agoda Services Co. Ltd. All rights reserved.
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
