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
    public var director: Director!

    var directorName: UILabel!
    var directorNameValue: UILabel!
    var tapToShowMore: TappableLabel!
    var actorName: UILabel!
    var actorNameValue: UILabel!
    var actorScreenName: UILabel!
    var actorScreenNameValue: UILabel!
    
    // MARK: Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
        view = UIView()
        view.backgroundColor = .white

        directorName = UILabel()
        view.addSubview(directorName)
        directorName.frame = CGRect(x: 20, y: 100, width: 200, height: 30)
        directorName.text = "Director Name"

        directorNameValue = UILabel()
        view.addSubview(directorNameValue)
        directorNameValue.frame = CGRect(x: 20, y: 130, width: 200, height: 30)
        directorNameValue.text = director.name;

        tapToShowMore = TappableLabel()
        view.addSubview(tapToShowMore)
        tapToShowMore.frame = CGRect(x: 20, y: 180, width: 200, height: 30)
        tapToShowMore.text = "Tap here to show more"
        tapToShowMore.delegate = self

        actorName = UILabel()
        view.addSubview(actorName)
        actorName.frame = CGRect(x: 20, y: 180, width: 200, height: 30)
        actorName.text = "Actor Name"
        actorName.isHidden = true
        
        actorNameValue = UILabel()
        view.addSubview(actorNameValue)
        actorNameValue.frame = CGRect(x: 20, y: 210, width: 200, height: 30)
        actorNameValue.isHidden = true
        
        actorScreenName = UILabel()
        view.addSubview(actorScreenName)
        actorScreenName.frame = CGRect(x: 20, y: 240, width: 200, height: 30)
        actorScreenName.text = "Actor Screen Name"
        actorScreenName.isHidden = true
        
        actorScreenNameValue = UILabel()
        view.addSubview(actorScreenNameValue)
        actorScreenNameValue.frame = CGRect(x: 20, y: 270, width: 200, height: 30)
        actorScreenNameValue.isHidden = true
        
        let actor: Actor = director.film.cast[0];
        actorNameValue.text = actor.name;
        actorScreenNameValue.text = actor.screenName;
    }


    // MARK: DetailsViewInput

    func didReceiveTouch() {
        actorName.isHidden = false
        actorScreenName.isHidden = false
        actorNameValue.isHidden = false
        actorScreenNameValue.isHidden = false
        tapToShowMore.removeFromSuperview();
    }

}
