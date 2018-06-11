//
//  MoviesListPresenter.h
//  MovieWebService
//
//  Created by Prateek Khandelwal on 6/4/18.
//  Copyright © 2017 Talk.to FZC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MoviesListViewOutput.h"
#import "MoviesListInteractorOutput.h"

@protocol MoviesListViewInput;
@protocol MoviesListInteractorInput;
@protocol MoviesListRouterInput;

@interface MoviesListPresenter : NSObject <MoviesListViewOutput, MoviesListInteractorOutput>

@property (nonatomic, weak) id<MoviesListViewInput> view;
@property (nonatomic, strong) id<MoviesListInteractorInput> interactor;
@property (nonatomic, strong) id<MoviesListRouterInput> router;

@end
