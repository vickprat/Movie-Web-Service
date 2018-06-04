//
//  RootRouter.m
//  MovieWebService
//
//  Created by Prateek Khandelwal on 6/4/18.
//  Copyright © 2018 TestCompany. All rights reserved.
//

#import "RootRouter.h"
#import "MoviesListBuilder.h"

@implementation RootRouter

- (UIViewController *)rootViewController {
  UINavigationController *navigationController = [UINavigationController new];
  MoviesListBuilder *moviesListBuilder = [MoviesListBuilder new];
  navigationController.viewControllers = @[[moviesListBuilder build]];
  return navigationController;
}

@end
