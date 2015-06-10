//
//  SimpleAutoLayoutView.swift
//  Fitrangi App
//
//  Created by Anurag Agnihotri on 04/06/15.
//  Copyright (c) 2015 Fitrangi. All rights reserved.
//

import UIKit

public class SimpleAutoLayoutView: CustomView {
    
    private var didAddConstraints = false
    
    public override func initializeView() {
        setTranslatesAutoresizingMaskIntoConstraints(false)
        setNeedsUpdateConstraints()
    }
    
    public override func updateConstraints() {
        super.updateConstraints()
        if !didAddConstraints {
            addConstraints()
            didAddConstraints = true
        }
    }
    
    public func addConstraints() {
        fatalError("This method must be implemented by subclass")
    }
}
