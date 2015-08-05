//
//  APICall.swift
//  Indy Fundfest
//
//  Created by Andy Shi on 7/21/15.
//  Copyright © 2015 Indy Fundfest. All rights reserved.
//

import Foundation
typealias ServiceResponse = (JSON, NSError?) -> Void

class APICall: NSObject {
    
    static let sharedInstance = APICall()
    let url = "http://fundfest-backend.herokuapp.com/projects"
    
    func getProjects(onCompletion: (JSON) -> Void) {
        let api = url
        makeHTTPGetRequest(api, onCompletion: { json, err in
            onCompletion(json as JSON)
        })
    }
    
    func makeHTTPGetRequest(path: String, onCompletion: ServiceResponse) {
        let request = NSMutableURLRequest(URL: NSURL(string: path)!)
        let session = NSURLSession.sharedSession()
        let task = session.dataTaskWithRequest(request, completionHandler: {data, response, error -> Void in
            let json:JSON = JSON(data: data)
            onCompletion(json, error)
        })
        task.resume()
    }
}