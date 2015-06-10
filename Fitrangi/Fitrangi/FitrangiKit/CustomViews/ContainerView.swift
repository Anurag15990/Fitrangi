//
//  ContainerView.swift
//  Fitrangi App
//
//  Created by Anurag Agnihotri on 06/06/15.
//  Copyright (c) 2015 Fitrangi. All rights reserved.
//

import Foundation
import UIKit


class ContainerView : SimpleAutoLayoutView {
    
    override func initializeView() {
        borderColor = UIColor.lightGrayColor().CGColor
        borderWidth = 0.5
        layer.shadowColor = UIColorMake(138, 138, 138,alpha: 1.0).CGColor
        layer.shadowOffset = CGSizeMake(0, 0)
        layer.shadowOpacity = 1.0
        layer.shadowRadius = 2.0
    }
    
    override func addConstraints() {
        
    }
}
