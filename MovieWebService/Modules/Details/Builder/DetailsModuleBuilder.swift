//
//  DetailsModuleBuilder.swift
//  MovieWebService
//
//  Created by Prateek Khandelwal on 6/4/18.
//  Copyright © 2017 Talk.to FZC. All rights reserved.
//

import UIKit

@objc class DetailsModuleBuilder: NSObject {

    func build(with film: Film) -> UIViewController {

        let viewController = DetailsViewController()

        let router = DetailsRouter()
        router.viewController = viewController

        let presenter = DetailsPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = DetailsInteractor()
        interactor.output = presenter
        interactor.film = film;

        presenter.interactor = interactor
        viewController.output = presenter

        return viewController
    }

}
