//
//  ToolsHeaderList.swift
//  InEight
//
//  Created by athambiran on 1/23/17.
//  Copyright © 2017 athambiran. All rights reserved.
//

import UIKit

class ToolsHeaderList: NSObject {
    
    var tools:String=""
    
    class func generate()->[String]{
        
        var list:[String]=[]
        list.append("Safety")
        list.append("Quality")
        list.append("Environmental")
        list.append("General Discussion")
        
        return list
        
    }

}
