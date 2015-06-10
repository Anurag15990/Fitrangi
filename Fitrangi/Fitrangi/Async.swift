//
//  Async.swift
//  Fitrangi App
//
//  Created by Anurag Agnihotri on 04/06/15.
//  Copyright (c) 2015 Fitrangi. All rights reserved.
//

import Foundation


public class Async {
    
    public class func main(block : dispatch_block_t) {
        dispatch_async(dispatch_get_main_queue(), block)
    }
    
    public func main(block : dispatch_block_t) {
        dispatch_async(dispatch_get_main_queue(), block)
    }
    
    public func userInitiated(block : dispatch_block_t) {
        dispatch_async(dispatch_get_main_queue(), block)
    }
    
    public class func background(block : dispatch_block_t) {
        dispatch_async(dispatch_get_main_queue(), block)
    }
}
