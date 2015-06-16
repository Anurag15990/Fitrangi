//
//  StreamAdventureCard.swift
//  Fitrangi App
//
//  Created by Anurag Agnihotri on 06/06/15.
//  Copyright (c) 2015 Fitrangi. All rights reserved.
//

import Foundation
import UIKit
import SwiftyJSON

class StreamAdventureCard : UITableViewCell {
    
    @IBOutlet weak var profileImageView : AsyncImageView!
    @IBOutlet weak var nameLabel : UILabel!
    @IBOutlet weak var adventureCoverImageView : AsyncImageView!
    @IBOutlet weak var titleLabel : UILabel!
    @IBOutlet weak var containerView : ContainerView!
    @IBOutlet weak var writeReviewButton : UIButton!
    @IBOutlet weak var doneThisLabel : UILabel!
    @IBOutlet weak var addToWishListLabel : UILabel!
    
    
    override func drawRect(rect: CGRect) {
        profileImageView.cornerRadius = 20
        profileImageView.clipsToBounds = true
        profileImageView.imageView.bringSubviewToFront(writeReviewButton)
        adventureCoverImageView.setImageWithUrl("http://www.fitrangi.com/assets/media/adventure/556b0152453d1e52014a4d56/cover_169.jpeg", options: AsyncImageOptions.ShowAlways)
        nameLabel.text = "Anurag Agnihotri"
        profileImageView.setImageWithUrl("http://www.fitrangi.com/assets/media/profile/556f0ede453d1e5570a1636a/cover.jpeg", options: AsyncImageOptions.ShowAlways)
        titleLabel.text = "Hot Air Balooning at Udaipiur, Rajasthan"
        //doneThisLabel.font = UIFont.fontAwesomeOfSize(14)
        //addToWishListLabel.font = UIFont.fontAwesomeOfSize(14)
        doneThisLabel.text = String.fontAwesomeIconWithName("fa-flag")
        addToWishListLabel.text = String.fontAwesomeIconWithName("fa-list")
    }
    
}