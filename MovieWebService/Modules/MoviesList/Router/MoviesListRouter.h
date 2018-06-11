//
//  MoviesListRouter.h
//  MovieWebService
//
//  Created by Prateek Khandelwal on 6/4/18.
//  Copyright © 2017 Talk.to FZC. All rights reserved.
//

#import "MoviesListRouterInput.h"

@class UIViewController;

@interface MoviesListRouter : NSObject <MoviesListRouterInput>

@property (nonatomic, weak) UIViewController *viewController;

@end
