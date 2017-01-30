//
//  CustomFlowLayOut.swift
//  InEight
//
//  Created by athambiran on 1/26/17.
//  Copyright © 2017 athambiran. All rights reserved.
//

import UIKit

class CustomFlowLayOut: UICollectionViewFlowLayout {
    
    
    
    
    
    

    
    
    
    
    
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]?
    {
        
        
    var collectionAttributes:[UICollectionViewLayoutAttributes] = super.layoutAttributesForElements(in: rect)!
        
        
       // collectionAttributes.count
        var index:Int=0
        
        
        
        for _ in collectionAttributes
        {
            
            
            
            if(index>=1 && index<=collectionAttributes.count)
            {
                
                       var currentAttributes = collectionAttributes[index] as UICollectionViewLayoutAttributes
                 var previousAttributes = collectionAttributes[index-1] as UICollectionViewLayoutAttributes
                var origin=previousAttributes.frame.maxX
                print("the previous element maxX is \(origin) for the index \(index)")
                var spacing:Int=5
                if(origin+CGFloat(spacing)+currentAttributes.frame.origin.x<=(self.collectionView?.contentSize.width)!)
                {
                    
                    
                    var Frame:CGRect = currentAttributes.frame
                    Frame.origin.x=(origin+CGFloat(spacing))
                    currentAttributes.frame=Frame
                    
                }
                
                
                
            }
            
            index=index+1;
            
        }
        
       
        
        
        return collectionAttributes;
        
    }
  
    
    
}
