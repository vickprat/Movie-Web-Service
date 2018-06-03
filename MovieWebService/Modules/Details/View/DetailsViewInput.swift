//
//  DetailsViewInput.swift
//  MovieWebService
//
//  Created by testDev on 11/04/2017.
//  Copyright © 2017 Agoda Services Co. Ltd. All rights reserved.
//

protocol DetailsViewInput: class {
  
  func fillData(with directorName: String, actorName: String, actorScreenName: String)
  
  func showMore(isHidden: Bool);
  
}
