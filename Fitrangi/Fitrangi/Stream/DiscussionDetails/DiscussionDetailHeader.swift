//
//  DiscussionDetailHeader.swift
//  Fitrangi
//
//  Created by Toovia on 22/06/15.
//  Copyright (c) 2015 Fitrangi. All rights reserved.
//

import Foundation

class DiscussionDetailHeader : UITableViewHeaderFooterView {
    
    @IBOutlet weak var commentsView : UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        commentsView.backgroundColor = UIColorMake(15, 117, 188)
    }
    
}