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

public protocol WebRequestData  {
    func toDictionary() -> JSON
}

public protocol WebResponseData : class {
    init(json: JSON)
}

public class WebRequestExecutor {

    public class func executeGet<T: WebRequestData, U: WebResponseData>(url : String, request: T, completion: (response: U?, error: NSError?) -> Void) {
        
        let parametersJson = request.toDictionary()
        Alamofire.request(.GET, url, parameters: parametersJson.dictionaryObject)
            .responseJSON { (req, res, json, error) in
                if error == nil {
                    completion(response: U(json: JSON(json!)), error: nil)
                } else {
                    completion(response: nil, error: error)
                }
        }
    }
    
    public class func executePost<T: WebRequestData, U: WebResponseData>(url : String, request : T, completion : (response : U?, error : NSError?) -> Void) {
        
        let parametersJSON = request.toDictionary()
        Alamofire.request(.POST, url, parameters : parametersJSON.dictionaryObject)
            .responseJSON {(req, res, json, error) in
                if error == nil {
                    completion(response: U(json: JSON(json!)), error: nil)
                } else {
                    completion(response: nil, error: error)
                }
        }
    }
}



public class LoginRequestData : WebRequestData {
    
    var userName : String!
    var password : String!
    
    public func toDictionary() -> JSON {
        var dictionary = NSMutableDictionary()
        dictionary["UserName"] = userName
        dictionary["Password"] = password
        return JSON(dictionary)
    }
}

public class LoginResponseData : WebResponseData {
    
    var dictionary = NSDictionary()
    
    required public init(json: JSON) {
        dictionary = json.dictionaryObject!
    }
}



public class LoginService {
    
}