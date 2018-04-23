//
//  GoalCell.swift
//  goalpost-app
//
//  Created by Alex LaDue on 4/21/18.
//  Copyright © 2018 Alex LaDue. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {
    
    //Outlets
    @IBOutlet weak var goalDescriptionLbl: UILabel!
    @IBOutlet weak var goalTypeLbl: UILabel!
    @IBOutlet weak var goalProgressLbl: UILabel!
    @IBOutlet weak var completionView: UIView!
    
    //Functions
    
    // Configure the cell with data from the database
    func configureCell(goal: Goal){
        self.goalDescriptionLbl.text = goal.goalDescription
        self.goalTypeLbl.text = goal.goalType
        self.goalProgressLbl.text = String(describing: goal.goalProgress) //String(describing:) converts the int to a string for the label
        
        if goal.goalProgress == goal.goalCompletionValue {
            self.completionView.isHidden = false
        }else {
            self.completionView.isHidden = true
        }
    }
}
