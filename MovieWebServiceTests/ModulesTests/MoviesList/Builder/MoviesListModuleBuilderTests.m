//
//  MoviesListModuleBuilderTests.m
//  MovieWebServiceTests
//
//  Created by Prateek Khandelwal on 6/4/18.
//  Copyright © 2018 TestCompany. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "MoviesListBuilder.h"
#import "MoviesListViewController.h"
#import "MoviesListViewOutput.h"
#import "MoviesListPresenter.h"
#import "MoviesListInteractor.h"
#import "MoviesListRouter.h"

@interface MoviesListModuleBuilderTests : XCTestCase

@end

@implementation MoviesListModuleBuilderTests

- (void)testMoviesListModuleBuilder {
  MoviesListBuilder *builder = [MoviesListBuilder new];
  MoviesListViewController *viewController = (MoviesListViewController *)[builder build];
  XCTAssertNotNil(viewController);
  XCTAssertNotNil(viewController.output);
  
  MoviesListPresenter *presenter = (MoviesListPresenter *)viewController.output;
  XCTAssertNotNil(presenter.view);
  XCTAssertNotNil(presenter.router);
  XCTAssertNotNil(presenter.interactor);
  
  MoviesListInteractor *interactor = (MoviesListInteractor *)presenter.interactor;
  XCTAssertNotNil(interactor.output);
  
  MoviesListRouter *router = (MoviesListRouter *)presenter.router;
  XCTAssertNotNil(router.viewController);
}

@end
