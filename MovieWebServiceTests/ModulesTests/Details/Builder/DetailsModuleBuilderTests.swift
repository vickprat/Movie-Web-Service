//
//  DetailsModuleBuilderTests.swift
//  MovieWebService
//
//  Created by Prateek Khandelwal on 6/4/18.
//  Copyright © 2017 Talk.to FZC. All rights reserved.
//

import XCTest

@testable
import MovieWebService

class DetailsModuleBuilderTests: XCTestCase {

    func testDetailsModuleBuilder() {

        // given
        let builder = DetailsModuleBuilder()

        // when
        let viewController = builder.build(with: Film()) as! DetailsViewController

        // then
        XCTAssertNotNil(viewController.output)
        XCTAssertTrue(viewController.output is DetailsPresenter)

        let presenter: DetailsPresenter = viewController.output as! DetailsPresenter
        XCTAssertNotNil(presenter.view)
        XCTAssertTrue(presenter.view is DetailsViewController)
        XCTAssertNotNil(presenter.router)
        XCTAssertTrue(presenter.router is DetailsRouter)
        XCTAssertNotNil(presenter.interactor)
        XCTAssertTrue(presenter.interactor is DetailsInteractor)

        let interactor: DetailsInteractor = presenter.interactor as! DetailsInteractor
        XCTAssertNotNil(interactor.output)
        XCTAssertTrue(interactor.output is DetailsPresenter)

        let router: DetailsRouter = presenter.router as! DetailsRouter
        XCTAssertNotNil(router.viewController)
    }

}
