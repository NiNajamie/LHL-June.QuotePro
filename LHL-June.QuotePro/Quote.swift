//
//  Quote.swift
//  LHL-June.QuotePro
//
//  Created by Asuka Nakagawa on 2016-08-03.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

import UIKit

struct Quote  {
    
    // should show the name of the person and at least part of their quote.
    var nameOfAut: String
    var detail: String
    
    var photo: UIImage

    
//    init(nameOfAut: String, detail: String) {
//        self.nameOfAut = nameOfAut
//        self.detail = detail
//    }
    
    
    func getQuote() {
        
        let quoteURL = NSURL(string: "http://api.forismatic.com/api/1.0/?method=getQuote&lang=en&format=json")
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)) {
        }

        
        
//        // MARK: Perform a GET Request
//        private func makeHTTPGetRequest(path: String, onCompletion: ServiceResponse) {
//            let request = NSMutableURLRequest(URL: NSURL(string: path)!)
//
//            let session = NSURLSession.sharedSession()
//            
//            let task = session.dataTaskWithRequest(request, completionHandler: {data, response, error -> Void in
//                if let jsonData = data {
//                    let json:JSON = JSON(data: jsonData)
//                    onCompletion(json, error)
//                } else {
//                    onCompletion(nil, error)
//                }
//            })
//            task.resume()
//        }
//        
//        // MARK: Perform a POST Request
//        private func makeHTTPPostRequest(path: String, body: [String: AnyObject], onCompletion: ServiceResponse) {
//            let request = NSMutableURLRequest(URL: NSURL(string: path)!)
//            
//            // Set the method to POST
//            request.HTTPMethod = "POST"
//            
//            do {
//                // Set the POST body for the request
//                let jsonBody = try NSJSONSerialization.dataWithJSONObject(body, options: .PrettyPrinted)
//                request.HTTPBody = jsonBody
//                let session = NSURLSession.sharedSession()
//                
//                let task = session.dataTaskWithRequest(request, completionHandler: {data, response, error -> Void in
//                    if let jsonData = data {
//                        let json:JSON = JSON(data: jsonData)
//                        onCompletion(json, nil)
//                    } else {
//                        onCompletion(nil, error)
//                    }
//                })
//                task.resume()
//                
//            } catch {
//                // Create your personal error
//                onCompletion(nil, nil)
//            }
//        }
    }
    
}
