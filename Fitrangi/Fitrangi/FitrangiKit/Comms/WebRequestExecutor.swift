//
//  WebRequestExecutor.swift
//  Fitrangi
//
//  Created by Anurag Agnihotri on 16/06/15.
//  Copyright (c) 2015 Fitrangi. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON
import UIKit

protocol WebRequestData : class {
    func toDictionary() -> JSON
}

class WebRequest<T: WebRequestData> {
    let url: String
    let data: T
    
    init(url: String, data: T) {
        self.url = url
        self.data = data
    }
}

protocol WebResponseData : class {
    
    init(json: [String: AnyObject])
    
}

class WebRequestExecutor {

    func executeGet<T: WebRequestData, U: WebResponseData>(request: T, completion: (response: U, error: NSError) -> Void) {
        
        let j = JSON(request)
        Alamofire.request(.GET, "", parameters: j.dictionaryObject).responseJSON(options: NSJSONReadingOptions.AllowFragments, completionHandler: {(_, _, JSON, error) -> Void in
            println(JSON)
        })
            
        
    }
}



class LoginRequestData : WebRequestData {
    
    var userName : String!
    var password : String!
    
    func toDictionary() -> JSON {
        var dictionary = NSMutableDictionary()
        dictionary["UserName"] = userName
        dictionary["Password"] = password
        return JSON(dictionary)
    }
}