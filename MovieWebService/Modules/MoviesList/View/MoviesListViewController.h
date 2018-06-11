//
//  MoviesListViewController.h
//  MovieWebService
//
//  Created by Prateek Khandelwal on 6/4/18.
//  Copyright © 2017 Talk.to FZC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MoviesListViewInput.h"

@protocol MoviesListViewOutput;

@interface MoviesListViewController : UIViewController <MoviesListViewInput>

@property (nonatomic, strong) id<MoviesListViewOutput> output;

@end
