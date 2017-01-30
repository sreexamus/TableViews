//
//  PlanDetailViewController.swift
//  InEight
//
//  Created by athambiran on 1/22/17.
//  Copyright © 2017 athambiran. All rights reserved.
//

import UIKit

class PlanDetailViewController: UIViewController {

    
    @IBOutlet weak var ContainerView: UIView!
    @IBOutlet weak var signOut: UIButton!
    var sliderVC:SliderVCViewController!
    
    @IBOutlet weak var overViewBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        loadSliderForVC()
        
        // Do any additional setup after loading the view.
    }

    
    
    func loadSliderForVC()
    {
        
        
        //let plannerNotes:UIView=UINib.init(nibName: "PlannerNotes", bundle: nil) as! UIView
        
        sliderVC=SliderVCViewController.instanceFromNib() as! SliderVCViewController
        sliderVC.view.frame=CGRect(x: 1370, y: 0, width: sliderVC.view.frame.size.width, height: sliderVC.view.frame.size.height)
        
        self.view.addSubview(sliderVC.view)
        
        //  var tasSummary:UINib=UINib.init(nibName: "TaskSummary", bundle: nil)
        
        
        
        
        
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
    
    
    func initializetheUIElements(){
        
    var myBezierPath:UIBezierPath = UIBezierPath.init(roundedRect: overViewBtn.bounds, byRoundingCorners: [UIRectCorner.topLeft,UIRectCorner.bottomLeft], cornerRadii: CGSize(width: 20, height: 20))
        
        var caShape:CAShapeLayer=CAShapeLayer()
        caShape.frame=overViewBtn.bounds
        caShape.path=myBezierPath.cgPath
        
        
        overViewBtn.layer.mask=caShape;
        
        
        
        var myBezierPath1:UIBezierPath = UIBezierPath.init(roundedRect: overViewBtn.bounds, byRoundingCorners: [UIRectCorner.topRight,UIRectCorner.bottomRight], cornerRadii: CGSize(width: 20, height: 20))
        
        var caShape1:CAShapeLayer=CAShapeLayer()
        caShape1.frame=signOut.bounds
        caShape1.path=myBezierPath.cgPath
        
        signOut.layer.mask=caShape;
        
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        loadOverViewToScreen()
    }
    
    
    
    
    
    func loadOverViewToScreen(){
        
        
        let storyboard:UIStoryboard=UIStoryboard(name: "Main", bundle: nil)
        let overViewController:OverVViewController = storyboard.instantiateViewController(withIdentifier: "Overview") as! OverVViewController
        
        overViewController.PlanVC=self
        
        if(self.childViewControllers.count>0)
        {
            
           // for i in 0...self.childViewControllers.count
            //{
                 self.childViewControllers[0].view.removeFromSuperview()
                self.childViewControllers[0].removeFromParentViewController()
               
           // }
            
        }
        
        
        self.ContainerView.addSubview((overViewController.view)!)
        self.addChildViewController(overViewController)
        
        
    }
    
    
    
    @IBAction func OnTimeSheetsDone(_ sender: Any) {
        
        
        
        
        let storyboard:UIStoryboard=UIStoryboard(name: "Main", bundle: nil)
        let timeViewController:TimeSheetControllerViewController = storyboard.instantiateViewController(withIdentifier: "timeSheet") as! TimeSheetControllerViewController
        
        timeViewController.PlanVC=self
        
        if(self.childViewControllers.count>0)
        {
            
//            for i in 0...self.childViewControllers.count
//            {
                self.childViewControllers[0].view.removeFromSuperview()
                self.childViewControllers[0].removeFromParentViewController()
                
                
            //}
            
        }
        
        
        self.ContainerView.addSubview((timeViewController.view)!)
        self.addChildViewController(timeViewController)
        
        timeViewController.didMove(toParentViewController:self);
        
        
    }
    
    
    @IBAction func OnQuantitiesDone(_ sender: Any) {
    }

    
    @IBAction func OnNotesDone(_ sender: Any) {
    }
    
    
    @IBAction func OnProductivityDone(_ sender: Any) {
    }
    
    
    func AddToolsButtonClicked(i:Int){
        
        //sliderVC.view.frame=CGRect(x: 1020, y: 0, width: 1024, height: sliderVC.view.frame.size.height)
        
        
        
        sliderVC.sliderCloseAndOpen()
        
        
//       var FrameX = sliderVC.view.frame.origin.x
//        //Frame1.maxX
//        if(FrameX==1020){
//            FrameX=0
//        }else{
//            FrameX=1024
//        }
//        
//        
//        UIView.animate(withDuration: 0.3, animations: {
//            
//            self.sliderVC.view.frame=CGRect(x: FrameX, y: 0, width: self.sliderVC.view.frame.size.width, height: self.sliderVC.view.frame.size.height)
//            //self.view.addSubview(self.sliderVC.view)
//        })
//        
//        
        
    }
    
}
