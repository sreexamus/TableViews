//
//  SliderVCViewController.swift
//  InEight
//
//  Created by athambiran on 1/23/17.
//  Copyright © 2017 athambiran. All rights reserved.
//

import UIKit

class SliderVCViewController: UIViewController {

    @IBOutlet weak var leftContainer: UIView!
    @IBOutlet weak var rightContainer: UIView!
    var editTools:EditToolsViewController! = nil
    override func viewDidLoad() {
        super.viewDidLoad()

         initSliderContent()
        // Do any additional setup after loading the view.
    }

    
    func initSliderContent(){
        
        editTools = EditToolsViewController.instanceFromNib() as! EditToolsViewController
        
        editTools.sliderObc=self
        
        if(rightContainer.subviews.count > 0 )
        {
            rightContainer.subviews[0].removeFromSuperview()
        }
        
        
       // let tasSummary=TaskSummary.instanceFromNib()
        editTools.view.frame=CGRect(x: 0, y: 0, width: rightContainer.frame.size.width, height: rightContainer.frame.size.height)
        
        editTools.view.backgroundColor=UIColor.green
        //self.view.backgroundColor=UIColor.red
        
        
        rightContainer.addSubview(editTools.view)

        leftContainer.backgroundColor=UIColor.clear
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    class func instanceFromNib() -> UIViewController {
        return UINib(nibName: "SliderVC", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIViewController
    }
    
    
    
    func sliderCloseAndOpen(){
        
        

        
        var FrameX = self.view.frame.origin.x
        //Frame1.maxX
        if(FrameX>1024){
            FrameX=0
        }else{
            FrameX=1024
        }
        
        
        UIView.animate(withDuration: 0.3, animations: {
            
            self.view.frame=CGRect(x: FrameX, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height)
            //self.view.addSubview(self.sliderVC.view)
        })
        
        
        
        //sliderVC=SliderVCViewController.instanceFromNib() as! SliderVCViewController
      //  self.view.frame=CGRect(x: 1020, y: 0, width: 1024, height: sliderVC.view.frame.size.height)
        
        //self.view.addSubview(sel.view)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
