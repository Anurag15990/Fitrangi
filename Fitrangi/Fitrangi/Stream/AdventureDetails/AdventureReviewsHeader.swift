//
//  AdventureReviewsHeader.swift
//  Fitrangi
//
//  Created by Toovia on 24/06/15.
//  Copyright (c) 2015 Fitrangi. All rights reserved.
//

import Foundation

class AdventureReviewsHeader : UITableViewHeaderFooterView {
    
    @IBOutlet weak var reviewsView : UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        reviewsView.backgroundColor = UIColorMake(15, 117, 188)
    }

    
}