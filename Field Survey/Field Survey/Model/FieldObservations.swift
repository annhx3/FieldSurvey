//
//  FieldObservations.swift
//  Field Survey
//
//  Created by Alyssa Nielsen on 7/21/17.
//  Copyright © 2017 Alyssa Nielsen. All rights reserved.
//

import Foundation

struct FieldObservation{
    let classification: Classification
    let title: String
    let description: String
    let date: Date
    
    init(classification: Classification, title: String, description: String, date: Date){
        self.classification = classification
        self.title = title
        self.description = description
        self.date = date
    }
    
    init?(classification: String, title: String, description: String, date: Date){
        if let classification = Classification(rawValue: classification){
            self.init(classification: classification, title: title, description: description, date: date)
        }else{
            return nil
        }
    }
}
