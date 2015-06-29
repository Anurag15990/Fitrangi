//
//  AdventureReviewsView.swift
//  Fitrangi
//
//  Created by Toovia on 24/06/15.
//  Copyright (c) 2015 Fitrangi. All rights reserved.
//

import Foundation

class AdventureReviewsView : UITableViewCell {
    
    @IBOutlet weak var nameLabel : UILabel!
    @IBOutlet weak var reviewContentLabel : UILabel!
    @IBOutlet weak var timeSincePostedLabel : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        nameLabel.text = "IFTIKAAR LOBDING"
        reviewContentLabel.text = "ladakh is a two word combined for climbing passes (\"la & dags\" la means pass and dags means to climb up ).if you are a true adventure lover then the mighty passes and snow capped mountains of ladakh is your next home to rejuvenate & destress your self. the silent mountain valley speaks more than a radio, only if you have the Ear to listen.. one must come in a life time to ladkah to discover the unseen and unheard tales of the mighty mountains."
        timeSincePostedLabel.text = "4 days ago"
    }
}