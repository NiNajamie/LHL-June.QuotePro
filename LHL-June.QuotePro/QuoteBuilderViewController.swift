//
//  QuoteBuilderViewController.swift
//  LHL-June.QuotePro
//
//  Created by Asuka Nakagawa on 2016-08-03.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

import UIKit

class QuoteBuilderViewController: UIViewController {

    let testLabel = UILabel()
    var quote = Quote()

    
    @IBOutlet weak var quoteTextLabel: UILabel!
    @IBOutlet weak var quoteNameLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    
//    @IBOutlet weak var quoteTextLabel: UILabel!
//    @IBOutlet weak var nameLabel: UILabel!
//    @IBOutlet weak var imageView: UIImageView!
    
//    let quote = Quote()

    // MARK: - Action
    @IBAction func getQuotePressed(sender: UIButton) {
//        quoteTextLabel.text = "TEXT!!"
//        quoteNameLabel.text = "Name!!"
        quote.getQuote()
    }
    
    func setQuoteLabels()
    {
        let json = quote.json
        let quoteAuthor = json["quoteAuthor"]
        let quoteText = json["quoteText"]
        if let quoteAuthor = quoteAuthor, let quoteText = quoteText
        {
            print("NAME:\(quoteAuthor)")
            print("TEXT: \(quoteText)")
            
            
            dispatch_async(dispatch_get_main_queue()) {
                self.quoteNameLabel.text = quoteAuthor
                self.quoteTextLabel.text = quoteText

            }
        }
        
        testLabel.text = "What's happening here?"
    }
    
    // MARK: - View Controller Life Cycle -
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let labelFrame = CGRect(x: 20, y: 100, width: 100, height: 50)
//        testLabel.frame = labelFrame
//        testLabel.backgroundColor = UIColor.orangeColor()
//        testLabel.textColor = UIColor.brownColor()
//        self.testLabel.text = "What's up?"
//        
//        view.addSubview(testLabel)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(setQuoteLabels), name: "setQuoteLabels", object: nil)
        self.quoteTextLabel.text = "TEXT"
        self.quoteNameLabel.text = "Hello"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
