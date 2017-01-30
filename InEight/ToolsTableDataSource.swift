//
//  ToolsTableDataSource.swift
//  InEight
//
//  Created by athambiran on 1/23/17.
//  Copyright © 2017 athambiran. All rights reserved.
//

import UIKit

class ToolsTableDataSource: NSObject,UITableViewDelegate,UITableViewDataSource {
    
    var toolArray:[String:[ToolsList]]=[:]
    var toolslist:[String]=[]
    var delegate: ToolsAddButtonDelegate
    
    
    
    init(toolsarray:[String:[ToolsList]],tools:[String],delegate:ToolsAddButtonDelegate) {
        self.toolArray=toolsarray
        self.toolslist=tools
        self.delegate=delegate
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
       return toolslist.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        var temCount:Int;
        switch section {
        case 0:
              temCount = (toolArray["Quality"]?.count)!
        case 1:
            temCount = (toolArray["Environmental"]?.count)!
        case 2:
            temCount = (toolArray["Safety"]?.count)!
        default:
            temCount = (toolArray["General Discussion"]?.count)!
        }
        
      
        return temCount
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell:ToolsTabCell=tableView.dequeueReusableCell(withIdentifier: "ToolsCell") as! ToolsTabCell
        
        var secion:Int=indexPath.section
        var tempArray:[ToolsList]=[]
        
        switch secion {
        case 0:
            tempArray = toolArray["Quality"]!
        case 1:
            tempArray = toolArray["Environmental"]!
        case 2:
            tempArray = toolArray["Safety"]!
        default:
            tempArray = toolArray["General Discussion"]!
        }
        
        cell.ageLbl.text=tempArray[indexPath.row].Age
        cell.nameLbl.text=tempArray[indexPath.row].Name
        
        
        return cell
        
        
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let uiview:UIView=tableView.dequeueReusableCell(withIdentifier: "TabHeader")!
        let myHeaderCell:ToolsHeaderView = uiview as! ToolsHeaderView
         myHeaderCell.delegate=self.delegate
        
       // myHeaderCell.deleteBtn.setTitle(toolslist[section], for: <#T##UIControlState#>)
        
        myHeaderCell.titleLbl.text=toolslist[section]
        myHeaderCell.addBtn.tag=section
        
        return uiview
        
    }

}
