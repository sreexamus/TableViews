//
//  CreatePlanTableViewCell.swift
//  InEight
//
//  Created by athambiran on 1/18/17.
//  Copyright © 2017 athambiran. All rights reserved.
//

import UIKit

class CreatePlanTableViewCell: UITableViewCell {


    @IBOutlet var dayLbl: UILabel!
    

    
    @IBOutlet var monthLbl: UILabel!
    
    @IBOutlet var selectedApproverLbl: UILabel!
    @IBOutlet var skipBtn: UIButton!
    @IBOutlet var createBtn: UIButton!
    @IBOutlet var planIdTxt: UITextField!
  
    @IBOutlet var planNameTxt: UITextField!
    
    
    @IBOutlet var selectAppBtn: UIButton!
    @IBOutlet var yearLbl: UILabel!
    override func awakeFromNib() {
        
        super.awakeFromNib()
        planIdTxt.returnKeyType=UIReturnKeyType.done
        planNameTxt.returnKeyType=UIReturnKeyType.done
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
