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
    
    //Functions
    
    // Configure the cell with data from the database
    func configureCell(description: String, type: String, goalProgressAmount: Int){
        self.goalDescriptionLbl.text = description
        self.goalTypeLbl.text = type
        self.goalProgressLbl.text = String(describing: goalProgressAmount) //String(describing:) converts the int to a string for the label
    }
}
