//
//  ToolsHeaderView.swift
//  InEight
//
//  Created by athambiran on 1/23/17.
//  Copyright © 2017 athambiran. All rights reserved.
//

import UIKit

protocol ToolsAddButtonDelegate {
    func onDoneAddTools(i:Int)
}
class ToolsHeaderView: UITableViewCell {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    var delegate:ToolsAddButtonDelegate!;
    
    @IBOutlet weak var deleteBtn: UIButton!
    
    @IBOutlet weak var addBtn: UIButton!
    
    @IBOutlet weak var titleLbl: UILabel!

    @IBAction func OnDoneAddTool(_ sender: Any) {
        
        var value:Int = (sender as AnyObject).tag
        delegate.onDoneAddTools(i: value)
        
        
    }
}
