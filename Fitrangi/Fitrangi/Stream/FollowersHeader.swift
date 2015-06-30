//
//  FollowersHeader.swift
//  Fitrangi
//
//  Created by Toovia on 30/06/15.
//  Copyright (c) 2015 Fitrangi. All rights reserved.
//

import Foundation

class FollowersHeader : UITableViewHeaderFooterView {
    
    @IBOutlet weak var followersView : UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        followersView.backgroundColor = UIColorMake(15, 117, 188)
        
    }
    
}