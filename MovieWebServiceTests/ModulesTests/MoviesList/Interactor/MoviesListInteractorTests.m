//
//  MoviesListInteractorTests.m
//  MovieWebService
//
//  Created by Prateek Khandelwal on 6/4/18.
//  Copyright © 2017 Talk.to FZC. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "MoviesListInteractor.h"

#import "MoviesListInteractorOutput.h"

@interface MoviesListInteractorTests : XCTestCase

@property (nonatomic, strong) MoviesListInteractor *interactor;

@property (nonatomic, strong) id mockOutput;

@end

@implementation MoviesListInteractorTests

- (void)setUp {
    [super setUp];

    self.interactor = [[MoviesListInteractor alloc] init];

    self.mockOutput = OCMProtocolMock(@protocol(MoviesListInteractorOutput));

    self.interactor.output = self.mockOutput;
}

- (void)tearDown {
    self.interactor = nil;

    self.mockOutput = nil;

    [super tearDown];
}

@end
