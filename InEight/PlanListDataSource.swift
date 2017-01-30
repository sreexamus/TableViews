//
//  PlanListDataSource.swift
//  InEight
//
//  Created by athambiran on 1/18/17.
//  Copyright © 2017 athambiran. All rights reserved.
//

import UIKit

protocol ChangesPlanVC{
    
    func onChangePlanVC() ->Void;
}

class PlanListDataSource: NSObject,UITableViewDelegate,UITableViewDataSource {
    
    
     var myplanList:[PlanList]!
    var delegate:ChangesPlanVC!;
    
    init(planList:[PlanList])
    {
        self.myplanList=planList
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return myplanList.count
    }
    
    
//    func cellForRowAtIndexPath(indexPath: NSIndexPath) -> UITableViewCell? {
//        
//        
//        
//        
//    }
    
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        if self.myplanList[indexPath.row].isNew==true{
            
            let cell:CreatePlanTableViewCell=tableView.dequeueReusableCell(withIdentifier: "CreatePlanCell") as! CreatePlanTableViewCell;
            
            cell.dayLbl.text=self.myplanList[indexPath.row].dayVal
            cell.monthLbl.text=self.myplanList[indexPath.row].monVal
            cell.yearLbl.text=self.myplanList[indexPath.row].yearVal
            cell.planIdTxt.text=self.myplanList[indexPath.row].planIdVal
            cell.planNameTxt.text=self.myplanList[indexPath.row].planName
            cell.selectAppBtn.tag=indexPath.row
              cell.createBtn.tag=indexPath.row
            cell.planIdTxt.tag=600
            cell.planNameTxt.tag=500
           // tag=indexPath.row
             //cell.approverLbl.text="approver"
            return cell;
            
        }else{
            
            let cell:PlanListCell=tableView.dequeueReusableCell(withIdentifier: "PlanListCell") as! PlanListCell;
            
            
            
            cell.dayLbl.text=self.myplanList[indexPath.row].dayVal
            cell.monthLbl.text=self.myplanList[indexPath.row].monVal
            cell.yearLbl.text=self.myplanList[indexPath.row].yearVal
            cell.planIdLbl.text=self.myplanList[indexPath.row].planIdVal
            cell.planNameLbl.text=self.myplanList[indexPath.row].planName
            //cell.selectAppBtn.tag=indexPath.row
            cell.locationLbl.text=self.myplanList[indexPath.row].locationVal
            cell.shiftLbl.text=self.myplanList[indexPath.row].shiftVal
            cell.executorLbl.text="executor:- \(indexPath.row)"
            cell.approverLbl.text = self.myplanList[indexPath.row].approverVal
            cell.copyBtn.tag=indexPath.row
            //cell.copyErase.tag=indexPath.row
            cell.eraseBtn.tag=indexPath.row
            //cell.
           // cell.appVal.text="approver"
            
            return cell;
            
        }
        
    


        
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        
        
        
        self.delegate.onChangePlanVC();
        
    
        
       // self.navi
        
    }
    

}
