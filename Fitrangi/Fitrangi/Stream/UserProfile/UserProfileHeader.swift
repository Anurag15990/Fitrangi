//
//  UserProfileHeader.swift
//  Fitrangi
//
//  Created by Toovia on 20/06/15.
//  Copyright (c) 2015 Fitrangi. All rights reserved.
//

import Foundation

class UserProfileHeader : UITableViewHeaderFooterView {
    
    @IBOutlet weak var myStreamIconLabel : UILabel!
    @IBOutlet weak var myStreamLabel : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        myStreamIconLabel.text = String.fontAwesomeIconWithName("fa-spinner")
        myStreamIconLabel.font = UIFont.fontAwesomeOfSize(20)
    }
}