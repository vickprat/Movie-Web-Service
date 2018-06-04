//
//  DetailsPresenter.swift
//  MovieWebService
//
//  Created by testDev on 11/04/2017.
//  Copyright © 2017 Agoda Services Co. Ltd. All rights reserved.
//

class DetailsPresenter: DetailsModuleInput, DetailsViewOutput, DetailsInteractorOutput {
    weak var view: DetailsViewInput!
    var interactor: DetailsInteractorInput!
    var router: DetailsRouterInput!

    // MARK: - DetailsViewOutput
    func viewIsReady() {
      self.view.showMore(isHidden: false)
      self.interactor.getData();
    }
  
    func showMoreTapped() {
      self.view.showMore(isHidden: true)
    }
    
    // MARK: - DetailsInteractorOutput
    func setDirector(with director: Director) {
      self.view.setupDirectorLabel(with: director.name)
    }

    func setActor(with actor: Actor?) {
      self.view.setupActorLabel(with: actor?.name, actorScreenName: actor?.screenName)
    }
}
