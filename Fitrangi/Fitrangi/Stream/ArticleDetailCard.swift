//
//  ArticleDetailCard.swift
//  Fitrangi
//
//  Created by Toovia on 24/06/15.
//  Copyright (c) 2015 Fitrangi. All rights reserved.
//

import Foundation

class ArticleDetailCard : UITableViewCell {
    
    @IBOutlet weak var coverImage : AsyncImageView!
    @IBOutlet weak var titleLabel : UILabel!
    @IBOutlet weak var byLabel : UILabel!
    @IBOutlet weak var nameLabel : UILabel!
    @IBOutlet weak var commentsView : UIView!
    @IBOutlet weak var commentsIconLabel : UILabel!
    @IBOutlet weak var commentsLabel : UILabel!
    @IBOutlet weak var viewsLabel : UILabel!
    @IBOutlet weak var timeSincePostedLabel : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        coverImage.setImageWithUrl("http://www.fitrangi.com/media/article/556bf7e4453d1e556f2a8fda/cover_385.jpeg", options: AsyncImageOptions.ShowAlways)
        titleLabel.text = "Points To Remember While Trekking In Western Ghats"
        nameLabel.text = "Yuni Fitrangi"
        commentsIconLabel.text = String.fontAwesomeIconWithName("fa-comment-o")
        commentsIconLabel.font = UIFont.fontAwesomeOfSize(20)
        commentsLabel.text = "0"
        viewsLabel.text = "130 Views"
        timeSincePostedLabel.text = "23 days ago"
    }
    
}