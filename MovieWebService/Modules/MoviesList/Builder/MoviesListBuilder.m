//
//  MoviesListAssembly.m
//  MovieWebService
//
//  Created by Prateek Khandelwal on 6/4/18.
//  Copyright © 2017 Talk.to FZC. All rights reserved.
//

#import "MoviesListBuilder.h"
#import "MoviesListViewController.h"
#import "MoviesListInteractor.h"
#import "MoviesListPresenter.h"
#import "MoviesListRouter.h"

@implementation MoviesListBuilder

- (UIViewController *)build {
    MoviesListViewController *viewController = [MoviesListViewController new];

    MoviesListRouter *router = [MoviesListRouter new];
    router.viewController = viewController;

    MoviesListPresenter *presenter = [MoviesListPresenter new];
    presenter.view = viewController;
    presenter.router = router;

    MoviesListInteractor *interactor = [MoviesListInteractor new];
    interactor.output = presenter;
    presenter.interactor = interactor;
    viewController.output = presenter;

    return viewController;
}

@end
