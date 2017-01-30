//
//  PlanListCell.swift
//  InEight
//
//  Created by athambiran on 1/18/17.
//  Copyright © 2017 athambiran. All rights reserved.
//

import UIKit

class PlanListCell: UITableViewCell,UITableViewDelegate {

    @IBOutlet var dayLbl: UILabel!
    
    
    @IBOutlet var shiftLbl: UILabel!
    @IBOutlet var locationLbl: UILabel!
    @IBOutlet var planIdLbl: UILabel!
    @IBOutlet var planNameLbl: UILabel!
    @IBOutlet var yearLbl: UILabel!
    @IBOutlet var monthLbl: UILabel!
    
    @IBOutlet var eraseBtn: UIButton!
    @IBOutlet var copyBtn: UIButton!

    @IBOutlet var executorLbl: UILabel!

   
    @IBOutlet var editBtn: UIButton!
    @IBOutlet var approverLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
 
    
  
    
 

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
