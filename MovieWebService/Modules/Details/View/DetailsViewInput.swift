//
//  DetailsViewInput.swift
//  MovieWebService
//
//  Created by Prateek Khandelwal on 6/4/18.
//  Copyright © 2017 Talk.to FZC. All rights reserved.
//

protocol DetailsViewInput: class {
  
  func setupDirectorLabel(with directorName: String)
  
  func setupActorLabel(with actorName: String?, actorScreenName: String?)
  
  func showMore(isHidden: Bool);
  
}
