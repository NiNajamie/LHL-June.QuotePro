//
//  Quote.swift
//  LHL-June.QuotePro
//
//  Created by Asuka Nakagawa on 2016-08-03.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

import UIKit

class Quote: NSObject {
    
    // should show the name of the person and at least part of their quote.
    var nameOfAut: String
    var detail: String
    
    init(nameOfAut: String, detail: String) {
        self.nameOfAut = nameOfAut
        self.detail = detail
    }
}
