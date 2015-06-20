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
    init?(json: JSON)
}

public class WebRequestExecutor {

    public class func executeGet<T: WebRequestData, U: WebResponseData>(url : String, request: T, completion: (response: U?, error: NSError?) -> Void) {
        executeRequest(.GET, url: url, request: request, completion: completion)
    }
    
    public class func executePost<T: WebRequestData, U: WebResponseData>(url : String, request : T, completion : (response : U?, error : NSError?) -> Void) {
        executeRequest(.GET, url: url, request: request, completion: completion)
    }
    
    private class func executeRequest<T: WebRequestData, U: WebResponseData>(method: Alamofire.Method, url : String, request : T, completion : (response : U?, error : NSError?) -> Void) {
        
        let parametersJson = request.toDictionary()
        Alamofire.request(method, url, parameters: parametersJson.dictionaryObject)
            .responseJSON { (req, res, json, error) in
                if error == nil {
                    if let u = U(json: JSON(json!)) {
                        completion(response: U(json: JSON(json!)), error: nil)
                    } else {
                        //TODO:
                    }
                    
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
    
    let userName: String?
    let success: Bool!
    
    required public init?(json: JSON) {
        success = json["success"].bool
        userName = json["UserName"].string
        if success == nil { return nil }
        
        
    }
}


protocol LoginServiceDelegate {
    func signInSuccess()
    
    func signInFailure(message: String)
}

public class LoginService {
    
    func execute(callback : (success : Bool, errorMessage : String?, response : LoginResponseData?) -> Void) {
        
        WebRequestExecutor.executePost("", request: LoginRequestData()) { (response: LoginResponseData?, error: NSError?) -> Void in
            if response != nil {
                if (response?.success != nil) {
                    
                }
                callback(success : true, errorMessage : nil, response : response)
            }
            else {
                callback(success : false, errorMessage : error!.localizedDescription, response : nil)
            }
        }
    }
}