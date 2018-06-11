//
//  MoviesListViewControllerTests.m
//  MovieWebService
//
//  Created by Prateek Khandelwal on 6/4/18.
//  Copyright © 2017 Talk.to FZC. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "MoviesListViewController.h"

#import "MoviesListViewOutput.h"

@interface MoviesListViewControllerTests : XCTestCase

@property (nonatomic, strong) MoviesListViewController *controller;

@property (nonatomic, strong) id mockOutput;

@end

@implementation MoviesListViewControllerTests

- (void)setUp {
    [super setUp];

    self.controller = [[MoviesListViewController alloc] init];

    self.mockOutput = OCMProtocolMock(@protocol(MoviesListViewOutput));

    self.controller.output = self.mockOutput;
}

- (void)tearDown {
    self.controller = nil;

    self.mockOutput = nil;

    [super tearDown];
}

- (void)testThatControllerNotifiesPresenterOnDidLoad {
	// given

	// when
	[self.controller viewDidLoad];

	// then
	OCMVerify([self.mockOutput viewIsReady]);
}

@end
