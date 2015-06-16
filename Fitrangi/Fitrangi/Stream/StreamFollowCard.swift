//
//  StreamFollowCard.swift
//  Fitrangi App
//
//  Created by Anurag Agnihotri on 08/06/15.
//  Copyright (c) 2015 Fitrangi. All rights reserved.
//

import UIKit

class StreamFollowCard: UITableViewCell {
    
    @IBOutlet weak var followerProfileImageView : AsyncImageView!
    @IBOutlet weak var followingProfileImageView : AsyncImageView!
    @IBOutlet weak var followingCoverImageView : AsyncImageView!
    @IBOutlet weak var followersName : UILabel!
    @IBOutlet weak var followingName : UILabel!
    @IBOutlet weak var actionLabel : UILabel!
    @IBOutlet weak var containerView : ContainerView!
    @IBOutlet weak var followButton : UIButton!
    @IBOutlet weak var followersLabel : UILabel!
    @IBOutlet weak var followingLabel : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        followerProfileImageView.cornerRadius = 20
        followerProfileImageView.clipsToBounds = true
        followingProfileImageView.imageView.contentMode = .ScaleAspectFit
        followersName.text = "Anurag Agnihotri"
        followingName.text = "Arshad Ansari"
        actionLabel.text = "followed"
        followerProfileImageView.setImageWithUrl("http://www.fitrangi.com/assets/media/profile/556f0ede453d1e5570a1636a/cover.jpeg", options: AsyncImageOptions.ShowAlways)
        followingProfileImageView.setImageWithUrl("http://www.fitrangi.com/assets/media/profile/552e3f3f453d1e2b529d6518/cover.png", options: AsyncImageOptions.ShowAlways)
        followingCoverImageView.setImageWithUrl("http://d3q5zq83v3a4xj.cloudfront.net/images/userprofile-banner.jpg", options: AsyncImageOptions.ShowAlways)
        followButton.borderColor = UIColor.lightGrayColor().CGColor
        followButton.borderWidth = 1
        followButton.setTitle(String.fontAwesomeIconWithName("fa-user"), forState: UIControlState.Normal)
        followButton.titleLabel!.font = UIFont.fontAwesomeOfSize(20)
        followersLabel.borderColor = UIColor.darkGrayColor().CGColor
        followersLabel.borderWidth = 1
        followingLabel.borderColor = UIColor.darkGrayColor().CGColor
        followingLabel.borderWidth = 1
        containerView.bringSubviewToFront(followButton)
        containerView.bringSubviewToFront(followingProfileImageView)
        containerView.bringSubviewToFront(followingName)
        containerView.bringSubviewToFront(followersLabel)
        containerView.bringSubviewToFront(followingLabel)
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
