//
//  DetailsViewTests.swift
//  MovieWebService
//
//  Created by Prateek Khandelwal on 6/4/18.
//  Copyright © 2017 Talk.to FZC. All rights reserved.
//

import XCTest

@testable
import MovieWebService

class DetailsViewTests: XCTestCase {

    var output: MockOutput!
    var viewController: DetailsViewController!
	
    override func setUp() {
        super.setUp()

        output = MockOutput()
		
        viewController = DetailsViewController()
        viewController.output = output
    }

    override func tearDown() {
        output = nil
        viewController = nil
		
        super.tearDown()
    }

    func testIfViewIsReady() {
        viewController.viewDidLoad()
        XCTAssertTrue(output.viewIsReadyDidCall)
    }
  
    func testIfTappableLabelClicked() {
      viewController.didReceiveTouch()
      XCTAssertTrue(output.labelTapped)
    }

    // MARK: - Mock

    class MockOutput: DetailsViewOutput {
        var viewIsReadyDidCall: Bool = false
        var labelTapped: Bool = false

        func viewIsReady() {
            viewIsReadyDidCall = true
        }
      
        func showMoreTapped() {
            labelTapped = true
        }
    }
}
