//
//  TimeSheetControllerViewController.swift
//  InEight
//
//  Created by athambiran on 1/26/17.
//  Copyright © 2017 athambiran. All rights reserved.
//

import UIKit

class TimeSheetControllerViewController: UIViewController,UIScrollViewDelegate{

    
    @IBOutlet weak var taskCollectionViewNew: UICollectionView!
    var PlanVC:PlanDetailViewController!
    @IBOutlet weak var scrollViewDocs: UIScrollView!

    @IBOutlet weak var documentsCollectionView: UICollectionView!
    @IBOutlet weak var resourceCollectionView: UICollectionView!
    var resourceDataSource:ResourceCollectionViewDataSource!
    var dataHoursDataSource:DataHoursDataSource!
    var taskDataSource:TaskCollectionDataSouece!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        scrollViewDocs.delegate=self
        
      
        
       let resourceData = Resourcesdata.generateData()
        resourceDataSource=ResourceCollectionViewDataSource(resoureDataList: resourceData)
        
       let taskData = Tasksdata.generateData()
        taskDataSource=TaskCollectionDataSouece(taskDataList: taskData)
        
        taskCollectionViewNew.dataSource=taskDataSource
        taskCollectionViewNew.delegate=taskDataSource
        
    
        
        resourceCollectionView.dataSource=resourceDataSource
        resourceCollectionView.delegate=resourceDataSource
        
       // var datHoursList=
        
        dataHoursDataSource=DataHoursDataSource(resourceList: resourceData,tasksList: taskData)
        
        documentsCollectionView.dataSource=dataHoursDataSource
        documentsCollectionView.delegate=dataHoursDataSource
        
        //documentsCollectionView.co
        let collectionViewLayout:CustomFlowLayOut=documentsCollectionView.collectionViewLayout as! CustomFlowLayOut
        
        
        collectionViewLayout.estimatedItemSize=CGSize(width: 130, height: 80)
        
        
        //taskCollectionView.register(TaskCollectionViewCell.self, forCellWithReuseIdentifier: "TaskCell")
//        resourceCollectionView.register(ResourceCollectionViewCell.self, forCellWithReuseIdentifier: "ResourceCell")
//
//        
//        
//        
//        documentsCollectionView.register(DataHoursCollectionViewCell.self, forCellWithReuseIdentifier: "AssignCollectionViewCell")
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    // MARK: - ScrollView Delegates
    
    
    //scroll
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
          print("scrollview is \(scrollView)")
        
        
        var contentOffSetScrollView=scrollViewDocs.contentOffset
        var contentOffSetResourceView=resourceCollectionView.contentOffset
        var contentOffSetTaskView=taskCollectionViewNew.contentOffset
        
        if(scrollView == scrollViewDocs){
            contentOffSetResourceView.y=contentOffSetScrollView.y
            contentOffSetTaskView.x=contentOffSetScrollView.x
            resourceCollectionView.contentOffset=contentOffSetResourceView
            taskCollectionViewNew.contentOffset=contentOffSetTaskView
            
        }else if(scrollView == resourceCollectionView){
            
            contentOffSetScrollView.y=contentOffSetResourceView.y
            scrollViewDocs.contentOffset=contentOffSetScrollView
            
            
        }else{
            
            contentOffSetScrollView.x=contentOffSetTaskView.x
            scrollViewDocs.contentOffset=contentOffSetScrollView
            
        }
        
        
    }
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        
        
    }

}
