//
//  OverVViewController.swift
//  InEight
//
//  Created by athambiran on 1/22/17.
//  Copyright © 2017 athambiran. All rights reserved.
//

import UIKit

class OverVViewController: UIViewController ,ToolsAddButtonDelegate{

    @IBOutlet weak var plannerNotesContainer: UIView!
    @IBOutlet weak var plannedTaskContainer: UIView!
    @IBOutlet weak var toolsTableView: UITableView!
    var PlanVC:PlanDetailViewController!
    var toolsList:[String:[ToolsList]]=[:]
    var tools:[String] = []
    var toolsDataSource:ToolsTableDataSource!
    override func viewDidLoad() {
        super.viewDidLoad()
        toolsList=ToolsList.generateToolsList()
        tools=ToolsHeaderList.generate()
        toolsDataSource=ToolsTableDataSource(toolsarray: toolsList, tools:tools,delegate:self)
        toolsTableView.delegate=toolsDataSource
        toolsTableView.dataSource=toolsDataSource
       loadToolsListView()
        loadPlannedTaskandPlannerNotes()
         //loadSliderForVC()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func loadToolsListView(){
    
        var toolHeadernib:UINib=UINib.init(nibName: "ToolsTableHeader", bundle: nil)
     
        toolsTableView.register(toolHeadernib, forCellReuseIdentifier: "TabHeader");
        
        //toolsTableView.re
    }
    
    func loadPlannedTaskandPlannerNotes()
    {
        
        
        //let plannerNotes:UIView=UINib.init(nibName: "PlannerNotes", bundle: nil) as! UIView
        
        let plannerNotes=PlannerNotes.instanceFromNib()
        plannerNotes.frame=CGRect(x: 0, y: 0, width: plannerNotes.frame.size.width, height: plannerNotes.frame.size.height)
        
        self.plannedTaskContainer.addSubview(plannerNotes)
        
      //  var tasSummary:UINib=UINib.init(nibName: "TaskSummary", bundle: nil)
        
        
        
        //let tasSummary:UIView=UINib.init(nibName: "TaskSummary", bundle: nil) as! UIView
        let tasSummary=TaskSummary.instanceFromNib()
        tasSummary.frame=CGRect(x: 0, y: 0, width: tasSummary.frame.size.width, height: tasSummary.frame.size.height)
        
        self.plannerNotesContainer.addSubview(tasSummary)
        
        
        
    }
    
    
 
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func ExpandDoneButton(_ sender: Any) {
        
        
        
        UIView.animate(withDuration: 0.3, animations: {
            
              
            
        })
    }
    
    // Mark ToolsAddButtonDelegate
    func onDoneAddTools(i:Int){
        
        
        PlanVC.AddToolsButtonClicked(i:0)
        
        
        
    }
    
    

}
