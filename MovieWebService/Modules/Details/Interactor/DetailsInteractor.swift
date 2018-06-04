//
//  DetailsInteractor.swift
//  MovieWebService
//
//  Created by testDev on 11/04/2017.
//  Copyright © 2017 Agoda Services Co. Ltd. All rights reserved.
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
