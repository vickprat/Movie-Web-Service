//
//  DetailsPresenter.swift
//  MovieWebService
//
//  Created by Prateek Khandelwal on 6/4/18.
//  Copyright © 2017 Talk.to FZC. All rights reserved.
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
