//
//  MoviesListPresenterTests.m
//  MovieWebService
//
//  Created by Prateek Khandelwal on 6/4/18.
//  Copyright © 2017 Talk.to FZC. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>
#import "MoviesListPresenter.h"
#import "MoviesListViewInput.h"
#import "MoviesListInteractorInput.h"
#import "MoviesListRouterInput.h"
#import "Film.h"

@interface MoviesListPresenterTests : XCTestCase

@property (nonatomic, strong) MoviesListPresenter *presenter;

@property (nonatomic, strong) id mockInteractor;
@property (nonatomic, strong) id mockRouter;
@property (nonatomic, strong) id mockView;

@end

@implementation MoviesListPresenterTests


- (void)setUp {
    [super setUp];

    self.presenter = [[MoviesListPresenter alloc] init];

    self.mockInteractor = OCMProtocolMock(@protocol(MoviesListInteractorInput));
    self.mockRouter = OCMProtocolMock(@protocol(MoviesListRouterInput));
    self.mockView = OCMProtocolMock(@protocol(MoviesListViewInput));

    self.presenter.interactor = self.mockInteractor;
    self.presenter.router = self.mockRouter;
    self.presenter.view = self.mockView;
}

- (void)tearDown {
    self.presenter = nil;

    self.mockView = nil;
    self.mockRouter = nil;
    self.mockInteractor = nil;

    [super tearDown];
}


- (void)testThatPresenterHandlesViewReadyEvent {
    // given


    // when
    [self.presenter viewIsReady];

    // then
    OCMVerify([self.mockInteractor fetchFilmsList]);
}

- (void)testThatPresenterHandlesFilmsData {
  //given
  Director *director = [[Director alloc] initWithName:@"Prateek"
                                            biography:@"random"
                                          dateOfBirth:[NSDate date]
                                          isNominated:YES];
  Film *film = [[Film alloc] initWithName:@"Prateek"
                               filmRating:4
                                languages:@[@"English"]
                              releaseDate:[NSDate date]
                                   rating:2
                                     cast:nil
                                 director:director
                              isNominated:YES];
  NSArray *films = @[film];
  
  // when
  [self.presenter fetchedFilms:films];
  
  // then
  OCMVerify([self.mockView showFilmsList]);
}

@end
