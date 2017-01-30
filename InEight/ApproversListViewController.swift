//
//  ApproversListViewController.swift
//  InEight
//
//  Created by athambiran on 1/20/17.
//  Copyright © 2017 athambiran. All rights reserved.
//

import UIKit

class ApproversListViewController: UIViewController,UISearchBarDelegate {

    @IBOutlet var uxSearchBar: UISearchBar!
    @IBOutlet var tablevieApprovers: UITableView!
    var approversDataSource:ApproversDataSource!
    var arrayApproversList:[ApproversList] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayApproversList=ApproversList.generateMyApprovers()
        
        approversDataSource=ApproversDataSource(list: arrayApproversList)
        
        tablevieApprovers.delegate=approversDataSource
        tablevieApprovers.dataSource=approversDataSource
        uxSearchBar.delegate=self
       uxSearchBar.returnKeyType=UIReturnKeyType.done
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        changeTheTableViewHieght(approverList:arrayApproversList)
        
        //frame1.height
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    
    func changeTheTableViewHieght(approverList:[ApproversList]){
        
        
        
        var tablRowHeight:CGFloat = tablevieApprovers.rowHeight
        
        tablRowHeight=(tablRowHeight * CGFloat(approverList.count))
        var frame1=tablevieApprovers.frame
        frame1.size.height=tablRowHeight
        
        tablevieApprovers.frame=frame1
    }
    
    
    //Mark  -UISearchBar Delegates
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        var temporaryList:[ApproversList]=[]
        
        if(searchText.isEmpty){
            
            temporaryList=arrayApproversList
        }else{
            
            temporaryList=arrayApproversList.filter({ (approv) -> Bool in
                return approv.Name.lowercased().contains(searchText.lowercased())
            })
            
        }
        
        approversDataSource.listApprovers=temporaryList
        tablevieApprovers.reloadData()
        
        changeTheTableViewHieght(approverList:temporaryList)
        
    }
    
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar){
    
              // tablevieApprovers.setNeedsLayout()
        //tablevieApprovers.setNeedsDisplay()
         changeTheTableViewHieght(approverList:approversDataSource.listApprovers)
        tablevieApprovers.translatesAutoresizingMaskIntoConstraints=true
         tablevieApprovers.setNeedsLayout()
         tablevieApprovers.setNeedsDisplay()
                uxSearchBar.resignFirstResponder()
        
    
    }
    
    @IBAction func closeMyApprovers(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func closeApprovers(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
}
