//
//  MovieWebServiceTests.m
//  MovieWebServiceTests
//
//  Created by Prateek Khandelwal on 6/4/18.
//  Copyright © 2018 TestCompany. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "MovieWebService.h"

@interface MovieWebServiceTests : XCTestCase

@end

@implementation MovieWebServiceTests

- (void)testMovieWebService {
  MovieWebService *webService = [MovieWebService new];
  XCTestExpectation *expectation = [self expectationWithDescription:@"Film data not received"];
  [webService getFilmDataWithCallback:^(NSDictionary *filmData) {
    if (filmData != nil) {
      [expectation fulfill];
      [self testFilmData:filmData];
    }
  }];
  [self waitForExpectationsWithTimeout:5 handler:nil];
}

- (void)testFilmData:(NSDictionary *)filmData {
  XCTAssertNotNil(filmData[@"filmRating"]);
  XCTAssertNotNil(filmData[@"languages"]);
  XCTAssertNotNil(filmData[@"nominated"]);
  XCTAssertNotNil(filmData[@"releaseDate"]);
  XCTAssertNotNil(filmData[@"rating"]);
  XCTAssertNotNil(filmData[@"name"]);
  XCTAssertNotNil(filmData[@"director"]);
  XCTAssertNotNil(filmData[@"director"][@"dateOfBirth"]);
  XCTAssertNotNil(filmData[@"director"][@"nominated"]);
  XCTAssertNotNil(filmData[@"director"][@"name"]);
  XCTAssertNotNil(filmData[@"director"][@"biography"]);
}

@end
