//
//  FinishGoalVC.swift
//  goalpost-app
//
//  Created by Alex LaDue on 4/22/18.
//  Copyright © 2018 Alex LaDue. All rights reserved.
//

import UIKit

class FinishGoalVC: UIViewController, UITextFieldDelegate {

    //Outlets
    
    @IBOutlet weak var createGoalBtn: UIButton!
    @IBOutlet weak var pointsTextField: UITextField!
    
    //Variables
    
    var goalDescription: String!
    var goalType: GoalType!
    
    
    //Functions
    
    func initData(description: String, type: GoalType) {
        self.goalDescription = description
        self.goalType = type
    }
        
    // View did load
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalBtn.bindToKeyboard()
        pointsTextField.delegate = self
    }

    //Actions
    
    @IBAction func createGoalBtnWasPressed(_ sender: Any) {
        // Pass data into Core Data Goal Model
    }
    
}
