//
//  DetailsViewController.swift
//  MovieWebService
//
//  Created by testDev on 11/04/2017.
//  Copyright © 2017 Agoda Services Co. Ltd. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController, DetailsViewInput, TappableLabelDelegate {

    var output: DetailsViewOutput!

    var directorName: UILabel!
    var directorNameValue: UILabel!
    var showMore: TappableLabel!
    var actorName: UILabel!
    var actorNameValue: UILabel!
    var actorScreenName: UILabel!
    var actorScreenNameValue: UILabel!
    
    // MARK: Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView();
        output.viewIsReady()
    }
    
    func setupView() {
        view = UIView()
        view.backgroundColor = .white
        
        directorName = UILabel()
        view.addSubview(directorName)
        directorName.frame = CGRect(x: 20, y: 100, width: 200, height: 30)
        directorName.text = "Director Name"
        
        directorNameValue = UILabel()
        view.addSubview(directorNameValue)
        directorNameValue.frame = CGRect(x: 20, y: 130, width: 200, height: 30)
        
        showMore = TappableLabel()
        view.addSubview(showMore)
        showMore.frame = CGRect(x: 20, y: 180, width: 200, height: 30)
        showMore.text = "Tap here to show more"
        showMore.delegate = self
        
        actorName = UILabel()
        view.addSubview(actorName)
        actorName.frame = CGRect(x: 20, y: 180, width: 200, height: 30)
        actorName.text = "Actor Name"
        
        actorNameValue = UILabel()
        view.addSubview(actorNameValue)
        actorNameValue.frame = CGRect(x: 20, y: 210, width: 200, height: 30)
        
        actorScreenName = UILabel()
        view.addSubview(actorScreenName)
        actorScreenName.frame = CGRect(x: 20, y: 240, width: 200, height: 30)
        actorScreenName.text = "Actor Screen Name"
        
        actorScreenNameValue = UILabel()
        view.addSubview(actorScreenNameValue)
        actorScreenNameValue.frame = CGRect(x: 20, y: 270, width: 200, height: 30)
    }

    // MARK: DetailsViewInput
    func fillData(with directorName: String, actorName: String, actorScreenName: String) {
        directorNameValue.text = directorName
        actorNameValue.text = actorName
        actorScreenNameValue.text = actorScreenName;
    }
    
    func showMore(isHidden: Bool) {
        showMore.isHidden = isHidden;
        actorName.isHidden = !isHidden
        actorScreenName.isHidden = !isHidden
        actorNameValue.isHidden = !isHidden
        actorScreenNameValue.isHidden = !isHidden
    }
    
    func didReceiveTouch() {
        self.output.showMoreTapped();
    }

}
