//
//  AdventureHowToReachView.swift
//  Fitrangi
//
//  Created by Toovia on 29/06/15.
//  Copyright (c) 2015 Fitrangi. All rights reserved.
//

import Foundation

class AdventureHowToReachView : UITableViewCell {
    
    @IBOutlet weak var byAirLabel : UILabel!
    @IBOutlet weak var byAirContentLabel : UILabel!
    @IBOutlet weak var byTrainLabel : UILabel!
    @IBOutlet weak var byTrainContentLabel : UILabel!
    @IBOutlet weak var byRoadLabel : UILabel!
    @IBOutlet weak var byRoadContentLabel : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        byAirContentLabel.text = "Easily reached from Leh Airport via Delhi Airport."
        byTrainContentLabel.text = "Can be accessed from different regions by Jammu Tawi Railway Station."
        byRoadContentLabel.text = "Well connected from Srinagar and Jammu. Zoji La Pass opens between June and October. Rohtang Pass opens between July and September.\n\nBuses and hired jeeps are easily available."
    }
    
}