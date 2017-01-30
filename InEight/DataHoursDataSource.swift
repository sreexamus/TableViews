//
//  DataHoursDataSource.swift
//  InEight
//
//  Created by athambiran on 1/27/17.
//  Copyright © 2017 athambiran. All rights reserved.
//

import UIKit

class DataHoursDataSource: NSObject, UICollectionViewDataSource,UICollectionViewDelegate {
    
    
    var resourceList:[Resourcesdata]!
    var tasksList:[Tasksdata]!
    
    
    init(resourceList:[Resourcesdata],tasksList:[Tasksdata]) {
        self.resourceList=resourceList
        self.tasksList=tasksList
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        
       return resourceList.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return tasksList.count
      
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
          let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "AssignCollectionViewCell", for: indexPath) as! DataHoursCollectionViewCell
        
        
         cell.value1.text="Res:OT \(resourceList[indexPath.section].st) Res:DT \(tasksList[indexPath.row].st)"
        
        return cell
        
    }

}
