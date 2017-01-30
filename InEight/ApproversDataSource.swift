//
//  ApproversDataSource.swift
//  InEight
//
//  Created by athambiran on 1/20/17.
//  Copyright © 2017 athambiran. All rights reserved.
//

import UIKit

class ApproversDataSource: NSObject,UITableViewDataSource,UITableViewDelegate {
    
    var listApprovers:[ApproversList]
    
    init(list:[ApproversList]) {
        listApprovers=list
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        var cell:ApproverTablecellTableViewCell=tableView.dequeueReusableCell(withIdentifier: "approvercell") as! ApproverTablecellTableViewCell
        
        //cell.appovAge.title(for:)=listApprovers[indexPath.row].Age
        cell.appovAge.setTitle("\(listApprovers[indexPath.row].Age!)", for: UIControlState.normal)
       // cell.appovAge.title(for: UIControlState.normal)
        cell.approvName.text=listApprovers[indexPath.row].Name
        return cell
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
       return listApprovers.count
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60.0
    }
    

}
