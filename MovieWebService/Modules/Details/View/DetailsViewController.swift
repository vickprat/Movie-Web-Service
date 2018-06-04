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
        self.title = "Movie Details"
        view.backgroundColor = .white
        self.setupLabels();
    }
    
    func setupLabels() {
        directorName = createLabel(y: 100, text: "Director Name")
        directorNameValue = createLabel(y: 130, text: nil)
        showMore = createLabel(y: 180, text: "Tap to show more", shouldTap: true) as! TappableLabel
        showMore.delegate = self
        actorName = createLabel(y: 180, text: "Actor Name")
        actorNameValue = createLabel(y: 210, text: nil)
        actorScreenName = createLabel(y: 240, text: "Actor Screen Name")
        actorScreenNameValue = createLabel(y: 270, text: nil)
    }
    
    func getFrame(with y: CGFloat) -> CGRect {
        return CGRect(x: 20, y: y, width: 200, height: 30)
    }
    
    func createLabel(y: CGFloat, text: String?, shouldTap: Bool = false) -> UILabel {
        let frame = getFrame(with: y)
        let label = shouldTap ? TappableLabel(frame: frame) : UILabel(frame: frame)
        label.text = text
        view.addSubview(label)
        return label
    }

    // MARK: DetailsViewInput
    func setupDirectorLabel(with directorName: String) {
        directorNameValue.text = directorName
    }
  
    func setupActorLabel(with actorName: String?, actorScreenName: String?) {
        if let actorName = actorName {
          actorNameValue.text = actorName
          actorScreenNameValue.text = actorScreenName;
        } else {
          showMore.isHidden = true
        }
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
