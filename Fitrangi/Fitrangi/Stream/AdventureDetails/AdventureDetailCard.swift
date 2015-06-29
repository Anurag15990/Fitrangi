//
//  AdventureDetailCard.swift
//  Fitrangi
//
//  Created by Toovia on 23/06/15.
//  Copyright (c) 2015 Fitrangi. All rights reserved.
//

import Foundation

class AdventureDetailCard : UITableViewCell {
    
    @IBOutlet weak var coverImage : AsyncImageView!
    @IBOutlet weak var titleLabel : UILabel!
    @IBOutlet weak var doneThisView : UIView!
    @IBOutlet weak var doneThisIconLabel : UILabel!
    @IBOutlet weak var doneThisLabel : UILabel!
    @IBOutlet weak var wishlistView : UIView!
    @IBOutlet weak var wishlistIconLabel : UILabel!
    @IBOutlet weak var wishlistlabel : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        coverImage.setImageWithUrl("http://www.fitrangi.com/media/adventure/556d7834453d1e5570a16347/cover.jpeg", options: AsyncImageOptions.ShowAlways)
        titleLabel.text = "Mountaineering At Ladakh, Jammu & Kashmir"
        doneThisView.borderWidth = 1
        doneThisView.borderColor = UIColor.lightGrayColor().CGColor
        doneThisIconLabel.text = String.fontAwesomeIconWithName("fa-flag")
        doneThisIconLabel.font = UIFont.fontAwesomeOfSize(15)
        wishlistView.borderWidth = 1
        wishlistView.borderColor = UIColor.lightGrayColor().CGColor
        wishlistIconLabel.text = String.fontAwesomeIconWithName("fa-list")
        wishlistIconLabel.font = UIFont.fontAwesomeOfSize(15)
        
    }
    
}