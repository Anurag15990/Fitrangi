//
//  CustomView.swift
//  Fitrangi App
//
//  Created by Anurag Agnihotri on 04/06/15.
//  Copyright (c) 2015 Fitrangi. All rights reserved.
//

import UIKit

public class CustomView: UIView {

   public override init(frame: CGRect) {
        super.init(frame: frame)
        initializeView()
    }
    
    required public init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initializeView()
    }
    
    public func initializeView() {
        
    }
}
