//
//  ResourceCollectionViewDataSource.swift
//  InEight
//
//  Created by athambiran on 1/27/17.
//  Copyright © 2017 athambiran. All rights reserved.
//

import UIKit

class ResourceCollectionViewDataSource: NSObject, UICollectionViewDataSource,UICollectionViewDelegate{
    
    
    var resoureDataList:[Resourcesdata]=[]
    
    
    init(resoureDataList:[Resourcesdata]){
    
       self.resoureDataList=resoureDataList
    
    
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        
        
        return self.resoureDataList.count
        
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
       // collectionView.dequeueReusableCell(withReuseIdentifier: <#T##String#>, for: <#T##IndexPath#>)
        
        let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "ResourceCell", for: indexPath) as! ResourceCollectionViewCell
        
        cell.resourceName.text=self.resoureDataList[indexPath.row].resourceName
        
        cell.resourceId.text=self.resoureDataList[indexPath.row].resourceId
        
        cell.backgroundColor=UIColor.yellow
        return cell
        
        
        
    }
    
    
   
}
