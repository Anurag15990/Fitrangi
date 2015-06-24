//
//  AdventureAboutView.swift
//  Fitrangi
//
//  Created by Toovia on 24/06/15.
//  Copyright (c) 2015 Fitrangi. All rights reserved.
//

import Foundation

class AdventureAboutView : UITableViewCell {
    
    @IBOutlet weak var aboutLabel : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        aboutLabel.text = "If you are truly looking for that once-in-a-lifetime experience, then mountaineering at Ladakh is the best experience that you can ask for. Located between the Himalayan and Karakoram mountain range, Ladakh has been attracting people from world over to its lap of enigmatic beauty and life experience. The awe-inspiring beauty and snow capped mountains offer a fantasy story setting for the traveler visiting Ladakh. Trekking through the high peaks, one gets to enjoy the magnificent view of the mountain ranges and recharge the human spirit of adventure within. All in all, no mountaineering list is complete without mountaineering at Ladakh, the land of high mountain passes."
    }
}