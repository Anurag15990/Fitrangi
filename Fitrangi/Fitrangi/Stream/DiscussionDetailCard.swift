//
//  DiscussionDetailCard.swift
//  Fitrangi
//
//  Created by Toovia on 22/06/15.
//  Copyright (c) 2015 Fitrangi. All rights reserved.
//

import Foundation

class DiscussionDetailCard : UITableViewCell {
    
    @IBOutlet weak var discussionCoverImage : AsyncImageView!
    @IBOutlet weak var discussionTitleLabel : UILabel!
    @IBOutlet weak var nameLabel : UILabel!
    @IBOutlet weak var timeSincePostedLabel : UILabel!
    @IBOutlet weak var commentsView : UIView!
    @IBOutlet weak var commentsIconLabel : UILabel!
    @IBOutlet weak var commentsLabel : UILabel!
    @IBOutlet weak var viewsLabel : UILabel!
    @IBOutlet weak var descriptionLabel : UILabel!
    @IBOutlet weak var byLabel : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        discussionCoverImage.setImageWithUrl("http://d3q5zq83v3a4xj.cloudfront.net/images/discussion-banner.jpg", options: AsyncImageOptions.ShowAlways)
        discussionTitleLabel.text = "How does one get into rock climbing?"
        discussionTitleLabel.numberOfLines = 2
        nameLabel.text = "Arshad Ansari"
        //descriptionLabel.text  = "How and where does one begin? How much training and preparation is needed? How expensive is this hobby?\nI have also heard of indoor wall climbing as a precursor to rock climbing? Is it necessary before I do actual rock climbing?"
        if (descriptionLabel.text == nil && descriptionLabel.text == "") {
            descriptionLabel.hidden = true
        } else {
            descriptionLabel.hidden = false
        }
        commentsIconLabel.text = String.fontAwesomeIconWithName("fa-comment")
        commentsIconLabel.font = UIFont.fontAwesomeOfSize(13)
        commentsLabel.text = "2"
        viewsLabel.text = "115 Views"
        timeSincePostedLabel.text = "40 days ago"
        
    }
    
    
    
}