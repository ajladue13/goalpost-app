//
//  GoalsVC.swift
//  goalpost-app
//
//  Created by Alex LaDue on 4/21/18.
//  Copyright © 2018 Alex LaDue. All rights reserved.
//

import UIKit

class GoalsVC: UIViewController {

    // Outlets
    @IBOutlet weak var tableView: UITableView!
    
    // What to peform when the view loads
    override func viewDidLoad() {
        super.viewDidLoad()
        print("View loaded correctly")
    }


    //Actions
    @IBAction func addGoalBtnWasPressed(_ sender: Any) {
        print("Button was pressed")
    }
    
    
    
}

