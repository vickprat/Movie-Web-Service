//
//  DetailsPresenterTests.swift
//  MovieWebService
//
//  Created by testDev on 11/04/2017.
//  Copyright © 2017 Agoda Services Co. Ltd. All rights reserved.
//


import XCTest

@testable
import MovieWebService

class DetailsPresenterTests: XCTestCase {

    var presenter: DetailsPresenter!
    var router: MockRouter!
    var interactor: MockInteractor!
    var view: MockView!
	
    override func setUp() {
        super.setUp()
		
        router = MockRouter()
        interactor = MockInteractor()
        view = MockView()

        presenter = DetailsPresenter()
        presenter.router = router
        presenter.interactor = interactor
        presenter.view = view
    }

    override func tearDown() {
        router = nil
        interactor = nil
        view = nil
        presenter = nil

        super.tearDown()
    }
  
    func testIfSetupDirectorDidCall() {
        let data: Dictionary = ["name": "Prateek"]
        let director: Director = Director.init(data: data)
        presenter.setDirector(with: director)
        XCTAssertTrue(view.setupDirectorLabelDidCall)
    }

    func testIfSetupActorDidCall() {
        let data: Dictionary = ["name": "Prateek", "screenName": "Vicky"]
        let actor: Actor = Actor.init(data: data)
        presenter.setActor(with: actor)
        XCTAssertTrue(view.setupActorLabelDidCall)
    }
  
    func testIfShowMoreDidCall() {
        presenter.showMoreTapped()
        XCTAssertTrue(view.showMoreDidCall)
    }
  
    func testIfGetDataDidCall() {
        presenter.viewIsReady()
        XCTAssertTrue(interactor.getDataDidCall)
    }
  
    // MARK: - Mock

    class MockInteractor: DetailsInteractorInput {
        var getDataDidCall: Bool = false
        func getData() {
          getDataDidCall = true
        }
    }

    class MockView: DetailsViewInput {
      var setupDirectorLabelDidCall: Bool = false
      var setupActorLabelDidCall = false
      var showMoreDidCall: Bool = false
		
      func setupDirectorLabel(with directorName: String) {
          setupDirectorLabelDidCall = true
      }
      
      func setupActorLabel(with actorName: String?, actorScreenName: String?) {
          setupActorLabelDidCall = true
      }
      
      func showMore(isHidden: Bool) {
          showMoreDidCall = true
      }
    }
  
    class MockRouter: DetailsRouterInput {
    
    }
}
