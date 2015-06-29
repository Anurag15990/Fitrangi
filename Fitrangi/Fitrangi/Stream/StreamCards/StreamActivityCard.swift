//
//  StreamActivityCard.swift
//  Fitrangi
//
//  Created by Toovia on 17/06/15.
//  Copyright (c) 2015 Fitrangi. All rights reserved.
//

import Foundation

class StreamActivityCard : UITableViewCell {
    
    @IBOutlet weak var containerView : ContainerView!
    @IBOutlet weak var profileImageView : AsyncImageView!
    @IBOutlet weak var nameLabel : UILabel!
    @IBOutlet weak var actionLabel : UILabel!
    @IBOutlet weak var activityNameLabel : UILabel!
    @IBOutlet weak var activityImageView : AsyncImageView!
    @IBOutlet weak var activityCoverImageView : AsyncImageView!
    @IBOutlet weak var favoriteButton : UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        profileImageView.cornerRadius = 20
        profileImageView.clipsToBounds = true
        profileImageView.setImageWithUrl("http://www.fitrangi.com/media/profile/557783a5453d1e017ccfa836/cover_1.png", options: AsyncImageOptions.ShowAlways)
        nameLabel.text = "Neha Yadav"
        actionLabel.text = "favorites an activity"
        activityCoverImageView.setImageWithUrl("http://www.fitrangi.com/media/activity/552f8459453d1e340aa1d7b3/cover.jpeg", options: AsyncImageOptions.ShowAlways)
        activityImageView.cornerRadius = 15
        activityImageView.clipsToBounds = true
        activityImageView.setImageWithUrl("http://d3q5zq83v3a4xj.cloudfront.net/images/adventure-icons/water-activities/surfing.png", options: AsyncImageOptions.ShowAlways)
        activityNameLabel.text = "Surfing"
        //favoriteButton.setTitle(String.fontAwesomeIconWithName("fa-star"), forState: UIControlState.Normal)
        favoriteButton.setTitle(String.fontAwesomeIconWithName("fa-star-o"), forState: UIControlState.Normal)
        favoriteButton.titleLabel!.font = UIFont.fontAwesomeOfSize(20)
        favoriteButton.borderWidth = 1
        favoriteButton.borderColor = UIColor.whiteColor().CGColor
        
    }
    
}