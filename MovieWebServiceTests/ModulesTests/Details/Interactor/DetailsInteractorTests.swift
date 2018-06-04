//
//  DetailsInteractorTests.swift
//  MovieWebService
//
//  Created by testDev on 11/04/2017.
//  Copyright © 2017 Agoda Services Co. Ltd. All rights reserved.
//

import XCTest

@testable
import MovieWebService

class DetailsInteractorTests: XCTestCase {

    var interactor: DetailsInteractor!
    var output: MockOutput!
	
    override func setUp() {
        super.setUp()
		
        output = MockOutput()
       
        interactor = DetailsInteractor()
        interactor.output = output
        interactor.film = Film()
    }

    override func tearDown() {
        output = nil
        interactor = nil
	
        super.tearDown()
    }
  
    func testIfSetDirectorDidCall() {
        interactor.getData()
        XCTAssertTrue(output.setDirectorDidCall)
    }

    // MARK: - Mock

    class MockOutput: DetailsInteractorOutput {
      var setDirectorDidCall: Bool = false
      var setActorDidCall: Bool = false
      func setDirector(with director: Director) {
        setDirectorDidCall = true
      }
      func setActor(with actor: Actor?) {
        setActorDidCall = true;
      }
    }

}
