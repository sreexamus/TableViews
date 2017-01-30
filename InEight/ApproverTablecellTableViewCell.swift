//
//  ApproverTablecellTableViewCell.swift
//  InEight
//
//  Created by athambiran on 1/20/17.
//  Copyright © 2017 athambiran. All rights reserved.
//

import UIKit

class ApproverTablecellTableViewCell: UITableViewCell {

    
    @IBOutlet var appovAge: UIButton!
    
    
    @IBOutlet var approvName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
