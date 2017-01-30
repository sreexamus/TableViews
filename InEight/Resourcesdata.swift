//
//  Resourcesdata.swift
//  InEight
//
//  Created by athambiran on 1/27/17.
//  Copyright © 2017 athambiran. All rights reserved.
//

import Foundation
class Resourcesdata {
    var resourceName:String=""
    var resourceId:String=""
    var totalHrs:String=""
    var st:String=""
    var dt:String=""
    var ot:String=""
    
    
    
    
    
    init(resourceName:String,resourceId:String,totalHrs:String,st:String,dt:String,ot:String) {
        self.resourceName=resourceName
        self.resourceId=resourceId
        self.totalHrs=totalHrs
        self.st=st
        self.dt=dt
        self.ot=ot
        
    }
    
    
    static func generateData()->[Resourcesdata]{
        
        
        var myTasksData:[Resourcesdata]=[]
        myTasksData.append(Resourcesdata(resourceName:"Sreekanth",resourceId:"12",totalHrs:"23",st:"23",dt:"12",ot:"43"))
        
        myTasksData.append(Resourcesdata(resourceName:"Reddy",resourceId:"123",totalHrs:"15",st:"23",dt:"12",ot:"43"))
        myTasksData.append(Resourcesdata(resourceName:"Bharagav",resourceId:"123",totalHrs:"14",st:"23",dt:"12",ot:"43"))
        
        myTasksData.append(Resourcesdata(resourceName:"Vivin",resourceId:"123",totalHrs:"32",st:"23",dt:"12",ot:"43"))
        
        myTasksData.append(Resourcesdata(resourceName:"Aarav",resourceId:"123",totalHrs:"23",st:"23",dt:"12",ot:"43"))
        
        myTasksData.append(Resourcesdata(resourceName:"Aarav",resourceId:"123",totalHrs:"23",st:"23",dt:"12",ot:"43"))
        myTasksData.append(Resourcesdata(resourceName:"Aarav",resourceId:"123",totalHrs:"23",st:"23",dt:"12",ot:"43"))
        myTasksData.append(Resourcesdata(resourceName:"Aarav",resourceId:"123",totalHrs:"23",st:"23",dt:"12",ot:"43"))
        myTasksData.append(Resourcesdata(resourceName:"Aarav",resourceId:"123",totalHrs:"23",st:"23",dt:"12",ot:"43"))
        myTasksData.append(Resourcesdata(resourceName:"Aarav",resourceId:"123",totalHrs:"23",st:"23",dt:"12",ot:"43"))
        myTasksData.append(Resourcesdata(resourceName:"Aarav",resourceId:"123",totalHrs:"23",st:"23",dt:"12",ot:"43"))
        myTasksData.append(Resourcesdata(resourceName:"Aarav",resourceId:"123",totalHrs:"23",st:"23",dt:"12",ot:"43"))
        myTasksData.append(Resourcesdata(resourceName:"Aarav",resourceId:"123",totalHrs:"23",st:"23",dt:"12",ot:"43"))
        
        
        return myTasksData
        
    }
    
}
