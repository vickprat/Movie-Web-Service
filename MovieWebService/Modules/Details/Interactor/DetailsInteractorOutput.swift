//
//  DetailsInteractorOutput.swift
//  MovieWebService
//
//  Created by Prateek Khandelwal on 6/4/18.
//  Copyright © 2017 Talk.to FZC. All rights reserved.
//

protocol DetailsInteractorOutput: class {
  
  func setDirector(with director: Director);
  func setActor(with actor: Actor?);

}
