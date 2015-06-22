//
//  ProfileView.swift
//  Fitrangi
//
//  Created by Toovia on 18/06/15.
//  Copyright (c) 2015 Fitrangi. All rights reserved.
//

import Foundation

class ProfileView : UITableViewCell {
    
    @IBOutlet weak var coverImageView : AsyncImageView!
    @IBOutlet weak var profileImageView : AsyncImageView!
    @IBOutlet weak var nameLabel : UILabel!
    @IBOutlet weak var followersLabel : UILabel!
    @IBOutlet weak var followingLabel : UILabel!
    @IBOutlet weak var locationMapLabel : UILabel!
    @IBOutlet weak var locationNameLabel : UILabel!
    @IBOutlet weak var locationView : UIView!
    @IBOutlet weak var editView : UIView!
    @IBOutlet weak var editIconLabel : UILabel!
    @IBOutlet weak var editLabel : UILabel!
    @IBOutlet weak var settingsView : UIView!
    @IBOutlet weak var settingsIconLabel : UILabel!
    @IBOutlet weak var settingsLabel : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        coverImageView.setImageWithUrl("http://www.fitrangi.com/assets/images/userprofile-banner.jpg", options: AsyncImageOptions.ShowAlways)
        profileImageView.setImageWithUrl("http://www.fitrangi.com/media/profile/557783a5453d1e017ccfa836/cover_1.png", options: AsyncImageOptions.ShowAlways)
        profileImageView.borderWidth = 2
        profileImageView.borderColor = UIColor.whiteColor().CGColor
        nameLabel.text = "Neha Yadav"
        followersLabel.borderWidth = 1
        followersLabel.borderColor = UIColor.darkGrayColor().CGColor
        followersLabel.text = "3 FOLLOWERS"
        followingLabel.borderWidth = 1
        followingLabel.borderColor = UIColor.darkGrayColor().CGColor
        followingLabel.text = "4 FOLLOWING"
        locationMapLabel.text = String.fontAwesomeIconWithName("fa-map-marker")
        locationMapLabel.font = UIFont.fontAwesomeOfSize(20)
        locationNameLabel.text = "Mumbai, Maharashtra, India"
        editView.borderWidth = 1
        editView.borderColor = UIColor.darkGrayColor().CGColor
        editIconLabel.text = String.fontAwesomeIconWithName("fa-pencil")
        editIconLabel.font = UIFont.fontAwesomeOfSize(20)
        editLabel.text = "Edit"
        settingsView.borderWidth = 1
        settingsView.borderColor = UIColor.darkGrayColor().CGColor
        settingsIconLabel.text = String.fontAwesomeIconWithName("fa-cog")
        settingsIconLabel.font = UIFont.fontAwesomeOfSize(20)
        settingsLabel.text = "Settings"
    }
}