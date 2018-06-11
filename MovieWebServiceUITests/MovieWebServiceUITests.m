//
//  MovieWebServiceUITests.m
//  MovieWebServiceUITests
//
//  Created by Prateek Khandelwal on 6/4/18.
//  Copyright © 2017 Talk.to FZC. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "MoviesListBuilder.h"

@interface MovieWebServiceUITests : XCTestCase

@end

@implementation MovieWebServiceUITests

- (void)setUp {
  [super setUp];
  self.continueAfterFailure = NO;
  [[[XCUIApplication alloc] init] launch];
}

- (void)tearDown {
  [super tearDown];
}

- (void)testMoviesListScreen {
  XCUIApplication *app = [XCUIApplication new];
  XCTAssert(app.navigationBars[@"Movies List"].exists);
  XCTAssertEqual(app.tables.count, 1);
  XCUIElementQuery *cells = app.tables.cells;
  XCUIElement *element;
  for (NSUInteger count = 0; count < cells.count; count++) {
    element = [cells elementBoundByIndex:count];
    XCTAssertNotNil([[element.staticTexts elementBoundByIndex:0] label]);
    XCTAssertNotNil([[element.staticTexts elementBoundByIndex:1] label]);
    XCTAssertNotNil([[element.staticTexts elementBoundByIndex:2] label]);
    XCTAssertNotNil([[element.staticTexts elementBoundByIndex:3] label]);
  }
  [element tap];
  XCTAssert(app.navigationBars[@"Movie Details"].exists);
}

@end
