//
//  PlanList.swift
//  InEight
//
//  Created by athambiran on 1/18/17.
//  Copyright © 2017 athambiran. All rights reserved.
//

import UIKit

class PlanList: NSObject {
    
    var dayVal:String=""
    var yearVal:String=""
    var monVal:String=""
    var approverVal:String=""
    var locationVal:String=""
    var shiftVal:String=""
    var planIdVal:String=""
    var planName:String=""
    var isNew:Bool=false
    
    init(dayVal:String,yearVal:String,monVal:String,approverVal:String,locationVal:String,shiftVal:String,planName:String,planIdVal:String,isNew:Bool) {
        
        self.dayVal=dayVal;
        self.yearVal=monVal;
        self.monVal=monVal;
        self.approverVal=approverVal;
        self.locationVal=locationVal;
        self.shiftVal=shiftVal;
        self.planName=planName;
        self.planIdVal=planIdVal;
        self.isNew=isNew;
    }
    
    
    
    
    

}
