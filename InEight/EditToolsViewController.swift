//
//  EditToolsViewController.swift
//  InEight
//
//  Created by athambiran on 1/23/17.
//  Copyright © 2017 athambiran. All rights reserved.
//

import UIKit

class EditToolsViewController: UIViewController {

    var sliderObc:SliderVCViewController!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    class func instanceFromNib() -> UIViewController {
        return UINib(nibName: "EditTools", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIViewController
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func CloseSlider(_ sender: Any) {
        
          sliderObc.sliderCloseAndOpen()
        
    }
}
