//
//  StreamArticleCard.swift
//  Fitrangi
//
//  Created by Toovia on 16/06/15.
//  Copyright (c) 2015 Fitrangi. All rights reserved.
//

import Foundation

class StreamArticleCard : UITableViewCell {
    
    @IBOutlet weak var publisherProfileImageView : AsyncImageView!
    @IBOutlet weak var publisherNameLabel : UILabel!
    @IBOutlet weak var actionLabel : UILabel!
    @IBOutlet weak var articleImageView : AsyncImageView!
    @IBOutlet weak var articleNameLabel : UILabel!
    @IBOutlet weak var containerView : ContainerView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        publisherProfileImageView.cornerRadius = 20
        publisherProfileImageView.clipsToBounds = true
        publisherProfileImageView.imageView.contentMode = .ScaleAspectFit
        publisherNameLabel.text = "Neha Yadav"
        actionLabel.text = "published an article"
        publisherProfileImageView.setImageWithUrl("http://www.fitrangi.com/media/profile/557783a5453d1e017ccfa836/cover.png", options: AsyncImageOptions.ShowAlways)
        articleImageView.setImageWithUrl("http://www.fitrangi.com/media/adventure/556e8692453d1e556f2a9056/cover.jpeg", options: AsyncImageOptions.ShowAlways)
        articleNameLabel.text = "Trek at Karnala Fort, Panvel, Maharashtra"
        
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
