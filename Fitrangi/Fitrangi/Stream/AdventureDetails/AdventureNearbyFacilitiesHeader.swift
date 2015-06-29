//
//  AdventureNearbyFacilitiesHeader.swift
//  Fitrangi
//
//  Created by Toovia on 24/06/15.
//  Copyright (c) 2015 Fitrangi. All rights reserved.
//

import Foundation

class AdventureNearbyFacilitiesHeader : UITableViewHeaderFooterView {
    
    @IBOutlet weak var nearbyFacilitiesView : UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        nearbyFacilitiesView.backgroundColor = UIColorMake(15, 117, 188)
    }

    
}