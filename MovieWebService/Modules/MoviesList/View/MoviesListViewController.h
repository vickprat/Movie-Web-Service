//
//  MoviesListViewController.h
//  MovieWebService
//
//  Created by testDev on 11/04/2017.
//  Copyright © 2017 Agoda Services Co. Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MoviesListViewInput.h"

@protocol MoviesListViewOutput;

@interface MoviesListViewController : UIViewController <MoviesListViewInput>

@property (nonatomic, strong) id<MoviesListViewOutput> output;

@end
