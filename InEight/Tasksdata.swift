//
//  Tasksdata.swift
//  InEight
//
//  Created by athambiran on 1/27/17.
//  Copyright © 2017 athambiran. All rights reserved.
//

import Foundation

class Tasksdata{
    var taskName:String=""
    var taskId:String=""
    var totalHrs:String=""
    var  st:String=""
    var dt:String=""
    var ot:String=""
    
    init(taskName:String,taskId:String,totalHrs:String,st:String,dt:String,ot:String) {
        self.taskName=taskName
        self.taskId=taskId
        self.totalHrs=totalHrs
        self.st=st
        self.dt=dt
        self.ot=ot
        
    }
    
    
    static func generateData()->[Tasksdata]{
        
        
        var myTasksData:[Tasksdata]=[]
        myTasksData.append(Tasksdata(taskName:"Sreekanth",taskId:"12",totalHrs:"23",st:"23",dt:"12",ot:"43"))
        
         myTasksData.append(Tasksdata(taskName:"Reddy",taskId:"123",totalHrs:"15",st:"23",dt:"12",ot:"43"))
         myTasksData.append(Tasksdata(taskName:"Bharagav",taskId:"123",totalHrs:"14",st:"23",dt:"12",ot:"43"))
        
        myTasksData.append(Tasksdata(taskName:"Vivin",taskId:"123",totalHrs:"32",st:"23",dt:"12",ot:"43"))
        
           myTasksData.append(Tasksdata(taskName:"Aarav",taskId:"123",totalHrs:"23",st:"23",dt:"12",ot:"43"))
        myTasksData.append(Tasksdata(taskName:"Aarav",taskId:"123",totalHrs:"23",st:"23",dt:"12",ot:"43"))
        myTasksData.append(Tasksdata(taskName:"Aarav",taskId:"123",totalHrs:"23",st:"23",dt:"12",ot:"43"))
        myTasksData.append(Tasksdata(taskName:"Aarav",taskId:"123",totalHrs:"23",st:"23",dt:"12",ot:"43"))
        myTasksData.append(Tasksdata(taskName:"Aarav",taskId:"123",totalHrs:"23",st:"23",dt:"12",ot:"43"))
        myTasksData.append(Tasksdata(taskName:"Aarav",taskId:"123",totalHrs:"23",st:"23",dt:"12",ot:"43"))
        myTasksData.append(Tasksdata(taskName:"Aarav",taskId:"123",totalHrs:"23",st:"23",dt:"12",ot:"43"))
        myTasksData.append(Tasksdata(taskName:"Aarav",taskId:"123",totalHrs:"23",st:"23",dt:"12",ot:"43"))
        
        
        return myTasksData
        
    }
    
    
}
