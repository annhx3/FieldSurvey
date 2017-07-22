//
//  Classification.swift
//  Field Survey
//
//  Created by Alyssa Nielsen on 7/21/17.
//  Copyright © 2017 Alyssa Nielsen. All rights reserved.
//

import UIKit

enum Classification:String {
    case amphibian
    case bird
    case fish
    case insect
    case mammal
    case plant
    case reptile
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }
}

