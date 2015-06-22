//
//  CommentsView.swift
//  Fitrangi
//
//  Created by Toovia on 22/06/15.
//  Copyright (c) 2015 Fitrangi. All rights reserved.
//

import Foundation

class CommentsView : UITableViewCell {
    
    @IBOutlet weak var nameLabel : UILabel!
    @IBOutlet weak var commentContentLabel : UILabel!
    @IBOutlet weak var timeSincePostedLabel : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        nameLabel.text = "Avdhesh Kumar Singh"
        commentContentLabel.text = "Well you can opt for mountaineering course from any of the below institutes. \n 1. ABVIMAS, Manali. (Himachal Pradesh) \n 2. NIM, Uttarkashi (Uttarakhand) \n 3. HMI, Darjeling."
        timeSincePostedLabel.text = "13 days ago"
        

    }
}