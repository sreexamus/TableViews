//
//  ToolsList.swift
//  InEight
//
//  Created by athambiran on 1/23/17.
//  Copyright © 2017 athambiran. All rights reserved.
//

import UIKit

class ToolsList: NSObject {
    
    var Name:String;
    var Age:String;
    
    init(name:String,age:String) {
        Name=name
        Age=age
    }
    
    class func generateToolsList()->[String:[ToolsList]]{
        
        var toolsListMap:[String:[ToolsList]]=[:]
        
         var toolsList:[ToolsList]=[]
        toolsList.append(ToolsList(name: "Sree", age: "32"))
          toolsList.append(ToolsList(name: "Reddy", age: "30"))
          toolsList.append(ToolsList(name: "Great", age: "26"))
       
        
        toolsListMap.updateValue(toolsList, forKey: "Quality")
        
         toolsList.removeAll();
        
        //var toolsList1:[ToolsList]=[]
        toolsList.append(ToolsList(name: "bhargav", age: "32"))
        toolsList.append(ToolsList(name: "kiran", age: "30"))
        toolsList.append(ToolsList(name: "lakshmi", age: "26"))
        
        
        toolsListMap.updateValue(toolsList, forKey: "Environmental")
        toolsList.removeAll();
        
        
        toolsList.append(ToolsList(name: "bhargav", age: "32"))
        toolsList.append(ToolsList(name: "kiran", age: "30"))
        toolsList.append(ToolsList(name: "lakshmi", age: "26"))
        
        
        toolsListMap.updateValue(toolsList, forKey: "Safety")
        toolsList.removeAll();
        
        
        toolsList.append(ToolsList(name: "bhargav", age: "32"))
        toolsList.append(ToolsList(name: "kiran", age: "30"))
        toolsList.append(ToolsList(name: "lakshmi", age: "26"))
        
        
        toolsListMap.updateValue(toolsList, forKey: "General Discussion")
        toolsList.removeAll();
        
        return toolsListMap
        
    }
    

}
