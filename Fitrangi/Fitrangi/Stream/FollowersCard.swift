//
//  FollowersCard.swift
//  Fitrangi
//
//  Created by Toovia on 30/06/15.
//  Copyright (c) 2015 Fitrangi. All rights reserved.
//

import Foundation

class FollowersCard : UITableViewCell {
    
    @IBOutlet weak var nameLabel : UILabel!
    @IBOutlet weak var profileImage : AsyncImageView!
    @IBOutlet weak var followButton : UIButton!
    @IBOutlet weak var locationView : UIView!
    @IBOutlet weak var locationIconLabel : UILabel!
    @IBOutlet weak var locationLabel : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        nameLabel.text = "Anurag Agnihotri"
        profileImage.setImageWithUrl("http://www.fitrangi.com/assets/media/profile/556f0ede453d1e5570a1636a/cover.jpeg", options: AsyncImageOptions.ShowAlways)
        profileImage.cornerRadius = 20
        profileImage.clipsToBounds = true
        
        locationIconLabel.text = String.fontAwesomeIconWithName("fa-map-marker")
        locationIconLabel.font = UIFont.fontAwesomeOfSize(13)
        locationLabel.text = "Navi Mumbai, Maharashtra, India"
        followButton.borderWidth = 1
        followButton.borderColor = UIColor.darkGrayColor().CGColor
        followButton.setTitle(String.fontAwesomeIconWithName("fa-user"), forState: UIControlState.Normal)
        followButton.titleLabel!.font = UIFont.fontAwesomeOfSize(20)
        
        
    }
}