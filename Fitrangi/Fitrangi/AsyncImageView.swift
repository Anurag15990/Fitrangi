//
//  AsyncImageView.swift
//  Fitrangi App
//
//  Created by Anurag Agnihotri on 04/06/15.
//  Copyright (c) 2015 Fitrangi. All rights reserved.
//

import UIKit
import Foundation

public enum AsyncImageOptions {
    case ShowAlways
    case ShowOnlyIfExistsInCache
}

public class ResizeAspectFitImageView : UIImageView {
    
    var prefferedWidth : CGFloat = 0
    var maxHeight : CGFloat = CGFloat.max
    var minHeight : CGFloat = 0
    var imageSize : CGSize!
    
    public override func intrinsicContentSize() -> CGSize {
        if(imageSize != nil) {
            return CGSizeMake(imageSize.width, imageSize.height)
        } else {
            return CGSizeMake(40, 40)
        }
    }
}

public class AsyncImageView : SimpleAutoLayoutView {
    
    enum ViewState {
        case ImageNotSet
        case ImageUrlSet
        case Loading
        case Loaded
        case Error
    }
    
    var imageUrl : String!
    var viewState = ViewState.ImageNotSet
    
    public var imageView = ResizeAspectFitImageView.instanceWithAutoLayout()
    var activityView = UIActivityIndicatorView.instanceWithAutoLayout()
    
    
    public func setImageWithUrl(imageUrl : String, options : AsyncImageOptions, imageSize : CGSize? = nil) {
        self.imageUrl = imageUrl
        self.imageView.image = nil
        if imageSize != nil {
            self.imageView.imageSize = imageSize!
        }
        
        switch options {
        case .ShowAlways:
            viewState = ViewState.Loading
            imageView.setImageWithUrl(imageUrl, completed: {
                (image, error) -> Void in
                if image != nil {
                    self.viewState = ViewState.Loaded
                } else {
                    self.viewState = ViewState.Error
                }
                Async.main {
                    self.showControlsAsPerState()
                }
            })
            break
            
        case .ShowOnlyIfExistsInCache:
            viewState = ViewState.ImageUrlSet
            if UIImageView.cachedImageExistsForURL(imageUrl) {
                self.imageView.setImageWithUrl(imageUrl, completed: {
                    (image, error) -> Void in
                    if image != nil {
                        self.viewState = ViewState.Loaded
                        Async.main {
                            self.showControlsAsPerState()
                        }
                    }
                })
                break
            }
            showControlsAsPerState()
            invalidateIntrinsicContentSize()
        }
    }
    
    public func resetImage() {
        imageView.image = nil
        viewState = .ImageNotSet
    }
    
    public override func initializeView() {
        imageView.contentMode = UIViewContentMode.ScaleToFill
        addSubview(imageView)
        
        activityView.activityIndicatorViewStyle = .Gray
        addSubview(activityView)
        
        showControlsAsPerState()
        layoutMargins = UIEdgeInsetsMake(0, 0, 0, 0)
    }
    
    private func showControlsAsPerState() {
        switch viewState {
        case .ImageNotSet, .ImageUrlSet, .Loading:
            imageView.hidden = true
            activityView.hidden = false
            activityView.startAnimating()
            backgroundColor = UIColorMake(240, 240, 240)
        break
            
        case .Loaded:
            activityView.stopAnimating()
            activityView.hidden = true
            imageView.hidden = false
            backgroundColor = UIColor.whiteColor()
        break
        
        case .Error:
            activityView.stopAnimating()
            activityView.hidden = true
            imageView.hidden = true
            backgroundColor = UIColorMake(240, 240, 240)
        break
        }
    }
    
    public override func addConstraints() {
        LayoutConstraintsFactory(view : self)
            .fillParent(imageView)
            .alignCenterXOfView(activityView, withView: self)
            .alignCenterYOfView(activityView, withView: self)
            .installConstraints()
    }
    
    public var preferedWidth : CGFloat = 0 {
        didSet {
            imageView.prefferedWidth = preferedWidth
        }
    }
    
    public var maxHeight : CGFloat = 0 {
        didSet {
            imageView.maxHeight = maxHeight
        }
    }
    
    public var minHeight : CGFloat = 0 {
        didSet {
            imageView.minHeight = minHeight
        }
    }
}
