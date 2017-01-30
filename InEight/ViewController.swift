//
//  ViewController.swift
//  InEight
//
//  Created by athambiran on 1/18/17.
//  Copyright © 2017 athambiran. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate,ChangesPlanVC,UIPopoverPresentationControllerDelegate,CopyPlanstoPlanList {

    @IBOutlet var addButton: UIButton!
    @IBOutlet var planListTableView: UITableView!
    var planNameVal:String!
    var planIdVal:String!
    var currentTextField:UITextField!
    var planList:[PlanList]=[PlanList(dayVal:"Monday",yearVal:"2016",monVal:"Jan",approverVal:"Sree",locationVal:"Chicago",shiftVal:"First", planName:"Construct1", planIdVal:"12882",isNew:false),PlanList(dayVal:"Thursday",yearVal:"2017",monVal:"Mar",approverVal:"Reddy",locationVal:"Desmoins",shiftVal:"First", planName:"Construct1", planIdVal:"92882",isNew:false),PlanList(dayVal:"Friday",yearVal:"2018",monVal:"Apr",approverVal:"Sudi",locationVal:"Desmoins",shiftVal:"First", planName:"Construct1", planIdVal:"62882",isNew:false),PlanList(dayVal:"Friday",yearVal:"2018",monVal:"Apr",approverVal:"Sudi",locationVal:"Desmoins",shiftVal:"First", planName:"Construct1", planIdVal:"42882",isNew:false),PlanList(dayVal:"Saturday",yearVal:"2018",monVal:"Apr",approverVal:"Sudi",locationVal:"Desmoins",shiftVal:"First", planName:"Construct1", planIdVal:"22882",isNew:false),PlanList(dayVal:"Sunday",yearVal:"3018",monVal:"May",approverVal:"Sudi",locationVal:"Chicago",shiftVal:"First", planName:"Construct1", planIdVal:"62882",isNew:false)]
    var planListDataSource:PlanListDataSource!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        planListDataSource=PlanListDataSource(planList:planList);
        self.planListTableView.dataSource=planListDataSource
        self.planListTableView.delegate=planListDataSource
        self.planListDataSource.delegate=self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func viewDidAppear(_ animated: Bool) {
        
        //loadOverViewToScreen()
        
    }
    
    
    
    
    //protocol delegates
    
    func onChangePlanVC(){
       
        if(currentTextField != nil){
             currentTextField.resignFirstResponder();
        }
        
        
        
        let storyboard:UIStoryboard=UIStoryboard(name: "Main", bundle: nil)
        //var planDetailViewController:PlanDetailViewController? = storyboard.instantiateViewController(withIdentifier: "PlanDetailViewController") as PlanDetailViewController?
        //self.navigationController.p
        if let planDetControl:PlanDetailViewController? = storyboard.instantiateViewController(withIdentifier: "PlanDet") as? PlanDetailViewController
        {
            self.navigationController?.pushViewController(planDetControl!, animated: true)
        }
    
    }
    
    
    // Text Field delegates
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool
    {
        currentTextField=textField
        textField.autocapitalizationType=UITextAutocapitalizationType.sentences
        return true
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        if(textField.tag==600){
            textField.autocapitalizationType=UITextAutocapitalizationType.sentences
            
            planIdVal=textField.text
            print("plan id tag is \(textField.tag)")
            print("plan id  is \(planIdVal)")
            
        }else
        {
            textField.autocapitalizationType=UITextAutocapitalizationType.sentences
            
            planNameVal=textField.text
            print("plan name tag is \(textField.tag)")
            print("plan name  is \(planNameVal)")
            
        }
        
    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool{
        
        currentTextField=textField
        
        print("the text field length is \(textField.text?.characters.count)!")
             print("the string field length is \(string.characters.count)")
        var length:Int=0
        if let textis=textField.text{
            
            length=(textis.utf16.count)
            
        }
        
        
            
        if(length+string.characters.count<=10)
        {
            
            return true
        }
    
        
        return false;
    }
    
    
    func textFieldShouldReturn(_ userText: UITextField) -> Bool {
        currentTextField.resignFirstResponder()
        return true;
    }
    
    
    @IBAction func addNewPlans(_ sender: AnyObject) {
        
        
        planList.insert(PlanList(dayVal:"",yearVal:"",monVal:"",approverVal:"",locationVal:"",shiftVal:"First", planName:"Construct1", planIdVal:"",isNew:true), at: 0)
        planListDataSource=PlanListDataSource(planList:planList);
        planListDataSource.delegate=self
        self.planListTableView.dataSource=planListDataSource
         self.planListTableView.delegate=planListDataSource
        planListTableView.reloadData()
        
    }
    
    
    @IBAction func closePlans(_ sender: AnyObject) {
        
    
          planList.remove(at: 0);
        //planListDataSource=PlanListDataSource(planList:planList);
        planListDataSource.myplanList=planList
        self.planListTableView.dataSource=planListDataSource
        planListTableView.reloadData()
    }

    @IBAction func onSettings(_ sender: AnyObject) {
        if(currentTextField != nil){
            currentTextField.resignFirstResponder();
        }
        
    }
    @IBAction func CreateNewPlanCell(_ sender: AnyObject) {
        
        
        //sender.tag
        
           planList[0].approverVal="new approver"
           planList[0].dayVal="Mon"
            planList[0].yearVal="2019"
         planList[0].locationVal="Seatle"
         planList[0].monVal="June"
        if(planIdVal != nil){
            planList[0].planIdVal=planIdVal
        }
        
         planList[0].shiftVal="Second"
        planList[0].shiftVal="Second"
        if(planNameVal != nil)
        {planList[0].planName=planNameVal
        }
           planList[0].isNew=false
           //planList[0].="new plan"
        
        planListTableView.reloadData()
        
        
        
        
    }
    
    
    @IBAction func erasePlanCell(_ sender: AnyObject) {
        
        let index:Int=sender.tag
        planList.remove(at: index)
        planListTableView.reloadData()
        
    }
    
    
    @IBAction func copyPlans(_ sender: AnyObject) {
        
        let index:Int=sender.tag
//        planList.removeAtIndex(index)
//        planListTableView.reloadData()
        
        let storybaord:UIStoryboard=UIStoryboard(name: "Main", bundle: nil)
        //storybaord.in
        
        let viewController:CopyPlansPopup=storybaord.instantiateViewController(withIdentifier: "CopyPlan") as! CopyPlansPopup
        viewController.delegate=self
        viewController.Index=index
        viewController.modalPresentationStyle=UIModalPresentationStyle.popover
          viewController.popoverPresentationController?.sourceView = sender as? UIView
    
        viewController.popoverPresentationController?.sourceRect = CGRect(x: 0, y: 0, width: 300, height: 300)
       // viewController.popoverPresentationController?.permittedArrowDirections =.Any
        viewController.popoverPresentationController?.delegate=self
        self.present(viewController, animated: true, completion: nil)
        //self.present(viewController, animated: true, completion: nil)
       // self.pre
        
        
        
        
        ///
        
        
//        // grab the view controller we want to show
//        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//        UIViewController *controller = [storyboard instantiateViewControllerWithIdentifier:@"Pop"];
//        
//        // present the controller
//        // on iPad, this will be a Popover
//        // on iPhone, this will be an action sheet
//        controller.modalPresentationStyle = UIModalPresentationPopover;
//        [self presentViewController:controller animated:YES completion:nil];
//        
//        // configure the Popover presentation controller
//        UIPopoverPresentationController *popController = [controller popoverPresentationController];
//        popController.permittedArrowDirections = UIPopoverArrowDirectionAny;
//        popController.barButtonItem = self.leftButton;
//        popController.delegate = self;
        
    }
    
    
//    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
//        return .none
//    }
    
    
    //CopyPlansPopup Delegate method
    func copyPlanstoMainList(Index:Int){
        
        print("the index is \(Index)")
        let copyPlan:PlanList=PlanList(dayVal:planList[Index].dayVal,yearVal:planList[Index].yearVal,monVal:planList[Index].monVal,approverVal:planList[Index].approverVal,locationVal:planList[Index].locationVal,shiftVal:planList[Index].shiftVal, planName:planList[Index].planName,planIdVal:planList[Index].planIdVal,isNew:true)
        
        //copyPlan.isNew=true
        planList.insert(copyPlan, at: 0)
        
        planListDataSource=PlanListDataSource(planList: planList);
        planListTableView.dataSource=planListDataSource
        planListTableView.reloadData()
        
        
        
        
    }
    
    
    
    
    @IBAction func showApproversPopOver(_ sender: Any) {
        
        
        
        let storybaord:UIStoryboard=UIStoryboard(name: "Main", bundle: nil)
        //storybaord.in
        
        let viewController:ApproversListViewController=storybaord.instantiateViewController(withIdentifier: "approvervc") as! ApproversListViewController
       // viewController.delegate=self
        //viewController.Index=index
        viewController.modalPresentationStyle=UIModalPresentationStyle.popover
        viewController.popoverPresentationController?.sourceView = sender as? UIView
        
        viewController.popoverPresentationController?.sourceRect = CGRect(x: 0, y: 0, width: 300, height: 600)
         viewController.popoverPresentationController?.permittedArrowDirections = .right
        viewController.popoverPresentationController?.delegate=self
        self.present(viewController, animated: true, completion: nil)

        
        
        
    }
    
    
    @IBAction func editPlans(_ sender: AnyObject) {
        
        
        
        
    }
    
    
    
    
    
}

