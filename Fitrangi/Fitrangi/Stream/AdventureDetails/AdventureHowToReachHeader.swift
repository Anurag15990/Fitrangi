//
//  AdventureHowToReachHeader.swift
//  Fitrangi
//
//  Created by Toovia on 24/06/15.
//  Copyright (c) 2015 Fitrangi. All rights reserved.
//

import Foundation

class AdventureHowToReachHeader : UITableViewHeaderFooterView {
    
    @IBOutlet weak var howToReachView : UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        howToReachView.backgroundColor = UIColorMake(15, 117, 188)
    }

    
}