//
//  Quote.swift
//  LHL-June.QuotePro
//
//  Created by Asuka Nakagawa on 2016-08-03.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

import UIKit

struct Quote  {
    
    var nameOfAut: String
    var detail: String
    
//    var photo: UIImage
    
    // This guy is requesting to Server
    static func getQuote(quote: String) {
        
        // 1. Access the URL
        let urlSession = NSURLSession.sharedSession()
        let quoteURL = NSURL(string: "http://api.forismatic.com/api/1.0/?method=getQuote&lang=en&format=json")!
        let request = NSURLRequest(URL: quoteURL)
        
        // 3. Automatically back to Main Thread // JSON only lives within the block(closure)
        let dataTask: NSURLSessionTask = urlSession.dataTaskWithRequest(request, completionHandler: { (data, response, error) in
            
            let json = try! NSJSONSerialization.JSONObjectWithData(data!, options: []) as! [String: String]
            
            print(json)
            
            let quoteAuthor = json["quoteAuthor"]
            let quoteText = json["quoteText"]
            
            if let name = quoteAuthor, let text = quoteText {
                let quote1 = Quote(nameOfAut: name, detail: text)
                
                print(quote1.nameOfAut)
                print(quote1.detail)
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
