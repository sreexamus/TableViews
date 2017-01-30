//
//  TaskCollectionDataSouece.swift
//  InEight
//
//  Created by athambiran on 1/27/17.
//  Copyright © 2017 athambiran. All rights reserved.
//

import UIKit

class TaskCollectionDataSouece: NSObject,UICollectionViewDataSource,UICollectionViewDelegate{
    
    
    var taskDataList:[Tasksdata]
    
    init(taskDataList:[Tasksdata]) {
        self.taskDataList=taskDataList
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        
        return taskDataList.count
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        
        
        
        let cell:TaskCollectionViewCell=collectionView.dequeueReusableCell(withReuseIdentifier: "TaskCell", for: indexPath) as! TaskCollectionViewCell
        
        print("the row is \(indexPath.row)")
        print("teh data in the task collection is")
        print(self.taskDataList[indexPath.row].taskName)
        //cell.taskId?.text="sdfds"
        cell.taskName?.text=self.taskDataList[indexPath.row].taskName
        cell.taskId?.text=self.taskDataList[indexPath.row].taskId
            
        cell.backgroundColor=UIColor.cyan
       
        
        
        return cell
        
        
    }

}
