//
//  MoviesListInteractor.h
//  MovieWebService
//
//  Created by Prateek Khandelwal on 6/4/18.
//  Copyright © 2017 Talk.to FZC. All rights reserved.
//

#import "MoviesListInteractorInput.h"

@protocol MoviesListInteractorOutput;

@interface MoviesListInteractor : NSObject <MoviesListInteractorInput>

@property (nonatomic, weak) id<MoviesListInteractorOutput> output;

@end
