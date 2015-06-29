//
//  AdventureAboutHeader.swift
//  Fitrangi
//
//  Created by Toovia on 23/06/15.
//  Copyright (c) 2015 Fitrangi. All rights reserved.
//

import Foundation

class AdventureAboutHeader : UITableViewHeaderFooterView {
    
    @IBOutlet weak var aboutView : UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        aboutView.backgroundColor = UIColorMake(15, 117, 188)
    }

    
}