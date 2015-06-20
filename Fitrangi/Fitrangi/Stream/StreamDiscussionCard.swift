//
//  StreamDiscussionCard.swift
//  Fitrangi
//
//  Created by Toovia on 17/06/15.
//  Copyright (c) 2015 Fitrangi. All rights reserved.
//

import Foundation

class StreamDiscussionCard : UITableViewCell {
    
    @IBOutlet weak var profileImageView : AsyncImageView!
    @IBOutlet weak var nameLabel : UILabel!
    @IBOutlet weak var actionLabel : UILabel!
    @IBOutlet weak var discussionCoverImageView : AsyncImageView!
    @IBOutlet weak var discussionTitleLabel : UILabel!
    @IBOutlet weak var commentsLabel : UILabel!
    @IBOutlet weak var viewsLabel : UILabel!
    @IBOutlet weak var timeSincePostedLabel : UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        profileImageView.cornerRadius = 20
        profileImageView.clipsToBounds = true
        profileImageView.imageView.contentMode = .ScaleAspectFit
        nameLabel.text = "Arshad Ansari"
        actionLabel.text = "started a discussion"
        profileImageView.setImageWithUrl("http://www.fitrangi.com/media/profile/552e3f3f453d1e2b529d6518/cover.jpeg", options: AsyncImageOptions.ShowAlways)
        discussionCoverImageView.setImageWithUrl("http://www.fitrangi.com/media/adventure/556c5865453d1e556f2a9010/cover.jpeg", options: AsyncImageOptions.ShowAlways)
        discussionTitleLabel.text = "How does one get into rock climbing?"
        viewsLabel.text = "108 Views"
        //commentsLabel.text = "2"
        timeSincePostedLabel.text = "35 days ago"
        commentsLabel.text = String.fontAwesomeIconWithName("fa-comment-o")
        commentsLabel.font = UIFont.fontAwesomeOfSize(15)
        commentsLabel.borderWidth = 1
        commentsLabel.borderColor = UIColor.lightGrayColor().CGColor
        viewsLabel.borderWidth = 1
        viewsLabel.borderColor = UIColor.lightGrayColor().CGColor
        timeSincePostedLabel.borderWidth = 1
        timeSincePostedLabel.borderColor = UIColor.lightGrayColor().CGColor
        
    }
}