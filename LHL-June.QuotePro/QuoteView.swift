//
//  QuoteView.swift
//  LHL-June.QuotePro
//
//  Created by Asuka Nakagawa on 2016-08-03.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

import UIKit

class QuoteView: UIView {

    @IBOutlet var view: UIView!
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var quoteDetailLabel: UILabel!
    @IBOutlet weak var quoteNameLabel: UILabel!
    
    
    
    // Make a connection between xibFile and code
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        UINib.init(nibName: "QuoteView", bundle: nil).instantiateWithOwner(self, options: nil).first
        self.addSubview(self.view)
    }
    
    func setupWithQuote() {
//        quoteNameLabel.text = "Richard Evans"
//        quoteDetailLabel.text = "The undertaking of a new action brings new strength."
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
