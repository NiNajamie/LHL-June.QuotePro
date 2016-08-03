//
//  Photo.swift
//  LHL-June.QuotePro
//
//  Created by Asuka Nakagawa on 2016-08-03.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

import UIKit

class Photo: NSObject {

    var nameOfPhoto: String
    var photo: UIImage
    
    init(nameOfPhoto: String, photo: UIImage) {
        self.nameOfPhoto = nameOfPhoto
        self.photo = photo
    }
}
