//
//  DiscussionDescriptionView.swift
//  Fitrangi
//
//  Created by Toovia on 23/06/15.
//  Copyright (c) 2015 Fitrangi. All rights reserved.
//

import Foundation

class DiscussionDescriptionView : UITableViewCell {
    
    @IBOutlet weak var descriptionLabel : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        descriptionLabel.text  = "How and where does one begin? How much training and preparation is needed? How expensive is this hobby?\nI have also heard of indoor wall climbing as a precursor to rock climbing? Is it necessary before I do actual rock climbing?"
        
    }
    
}
