//
//  CopyPlansPopup.swift
//  InEight
//
//  Created by athambiran on 1/19/17.
//  Copyright © 2017 athambiran. All rights reserved.
//

import UIKit

protocol CopyPlanstoPlanList {
    func copyPlanstoMainList(Index:Int)
}

class CopyPlansPopup: UIViewController {
    var delegate:CopyPlanstoPlanList!
    var Index:Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
          self.preferredContentSize=CGSize(width: 300, height: 300)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func copyPlanstoPlanListController(_ sender: Any) {
        
        self.delegate.copyPlanstoMainList(Index: self.Index)
        self.dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    

}
