//
//  AdventureNearbyFacilitiesView.swift
//  Fitrangi
//
//  Created by Toovia on 29/06/15.
//  Copyright (c) 2015 Fitrangi. All rights reserved.
//

import Foundation

class AdventureNearbyFacilitiesView : UITableViewCell {
    
    @IBOutlet weak var nearbyStayLabel : UILabel!
    @IBOutlet weak var nearbyStayContentLabel : UILabel!
    @IBOutlet weak var nearbyEatingPlacesLabel : UILabel!
    @IBOutlet weak var nearbyEatingPlacesContentLabel : UILabel!
    @IBOutlet weak var nearbyStationsLabel : UILabel!
    @IBOutlet weak var nearbyStationsContentLabel : UILabel!
    @IBOutlet weak var nearbyAirportsLabel : UILabel!
    @IBOutlet weak var nearbyAirportsContentLabel : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        nearbyStayContentLabel.text = "Hotel Caravan Centre, Leh - 335.0 km\n\nHotel Lasermo, Leh - 337.0 k\n\nThe Grand Dragon Ladakh, Leh - 337.0 km\n\nLadakh Sarai, Leh - 338.0 km"
        nearbyEatingPlacesContentLabel.text = "Lamayuru Restaurant, Leh - 338.0 km\n\nGesmo, Leh - 338.0 km\n\nChopsticks, Leh - 338.0 km\n\nPenguin Garden Restaurant, Leh - 338.0 km"
        nearbyStationsContentLabel.text = "Srinagar Bus Stand 329.0 km\n\nJammu Bus Stand 616.0 km\n\nJammu Tawi Railway Station 680.0 km"
        nearbyAirportsContentLabel.text = "Leh Airport - 333.0 km"

    }
    
}