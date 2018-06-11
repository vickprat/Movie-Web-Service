//
//  DetailsInteractor.swift
//  MovieWebService
//
//  Created by Prateek Khandelwal on 6/4/18.
//  Copyright © 2017 Talk.to FZC. All rights reserved.
//

class DetailsInteractor: DetailsInteractorInput {

    public var film: Film!
    weak var output: DetailsInteractorOutput!

    // MARK: - DetailsInteractorInput
    func getData() {
      self.output.setDirector(with: film.director)
      let actor: Actor? = film.cast?[0]
      self.output.setActor(with: actor)
    }
}
