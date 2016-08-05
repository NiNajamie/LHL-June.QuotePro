//
//  Quote.swift
//  LHL-June.QuotePro
//
//  Created by Asuka Nakagawa on 2016-08-03.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

import UIKit

class Quote {
    
    var json = [String: String]()
//    var testString = ""

    // This guy is requesting to Server
    func getQuote() {
        
        // Setup the session to make REST GET call.  Notice the URL is https NOT http!!
        // 1. Access the URL
        let urlSession = NSURLSession.sharedSession()
        let quoteURL = NSURL(string: "http://api.forismatic.com/api/1.0/?method=getQuote&lang=en&format=json")!
        let request = NSURLRequest(URL: quoteURL)
        
        // 3. Automatically back to Main Thread // JSON only lives within the block(closure)
        let dataTask: NSURLSessionTask = urlSession.dataTaskWithRequest(request, completionHandler: { (data, response, error) in
            
            if let data = data
            {
                if error == nil
                {
                    print(response)
                    self.json = try! NSJSONSerialization.JSONObjectWithData(data, options: []) as! [String : String]
                    NSNotificationCenter.defaultCenter().postNotificationName("setQuoteLabels", object: self, userInfo: self.json)
//                    print(self.json["quoteAuthor"]!)
//                    print(self.json["quoteText"]!)

                }
                else
                {
                    print("OMG, there is error!")
                }
            }
            
        })
        // 2. Resume(Back to above)
        dataTask.resume()
    }
    

//        var dataTask: NSURLSessionTask = urlSession.dataTaskWithURL(quoteURL!) { (data: NSData?, responce: NSURLResponse?, error: NSError?) in
//        }
        
//        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)) {
//        }
        
    
}
