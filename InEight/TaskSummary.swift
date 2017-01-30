//
//  TaskSummary.swift
//  InEight
//
//  Created by athambiran on 1/23/17.
//  Copyright © 2017 athambiran. All rights reserved.
//

import UIKit

class TaskSummary: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    
    class func instanceFromNib() -> UIView {
        return UINib(nibName: "TaskSummary", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }

}
