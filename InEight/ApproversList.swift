//
//  ApproversList.swift
//  InEight
//
//  Created by athambiran on 1/20/17.
//  Copyright © 2017 athambiran. All rights reserved.
//

import UIKit

class ApproversList: NSObject {
    var Name:String=""
    var Age:Int!
    
    
    init(name:String,age:Int) {
        Name=name
        Age=age
    }
    
    
    class func generateMyApprovers() -> [ApproversList]{
        
        
        var approversArray:[ApproversList]=[]
        
        
        approversArray.append(ApproversList(name:"Sreekanth",age:30))
        approversArray.append(ApproversList(name:"bhargav",age:32))
        approversArray.append(ApproversList(name:"Reddy",age:28))
        approversArray.append(ApproversList(name:"Lima",age:12))
        approversArray.append(ApproversList(name:"Peru",age:32))
        approversArray.append(ApproversList(name:"Sravs",age:34))
        approversArray.append(ApproversList(name:"Kalyan",age:12))
        approversArray.append(ApproversList(name:"Remo",age:5))
     
        return approversArray
    }

}
