//
//  DetailsRouterTests.swift
//  MovieWebService
//
//  Created by Prateek Khandelwal on 6/4/18.
//  Copyright © 2017 Talk.to FZC. All rights reserved.
//

import XCTest

@testable
import MovieWebService

class DetailsRouterTests: XCTestCase {

    var router: DetailsRouter!
    var viewController: MockViewController!

    override func setUp() {
        super.setUp()
		
        viewController = MockViewController()
		
        router = DetailsRouter()
        router.viewController = viewController
    }

    override func tearDown() {
        viewController = nil
        router = nil

        super.tearDown()
    }
	
    // MARK: - Mock
	
    class MockViewController: DetailsViewController {
	
    } 
	
}
