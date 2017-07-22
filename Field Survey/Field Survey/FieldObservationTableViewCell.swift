//
//  FieldObservationTableViewCell.swift
//  Field Survey
//
//  Created by Alyssa Nielsen on 7/21/17.
//  Copyright © 2017 Alyssa Nielsen. All rights reserved.
//

import UIKit

class FieldObservationTableViewCell: UITableViewCell {

 
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var classificationIconImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
