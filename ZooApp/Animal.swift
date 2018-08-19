//
//  Animal.swift
//  ZooApp
//
//  Created by Muhammad abduh Siregar on 15/08/18.
//  Copyright © 2018 Muhammad abduh Siregar. All rights reserved.
//

import UIKit

class Animal: NSObject {
    var name:String?
    var desc:String?
    var image:String?
    
    init(name:String, desc:String, image:String) {
        self.name = name
        self.desc = desc
        self.image = image
    }
}
