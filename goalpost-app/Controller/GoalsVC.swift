//
//  GoalsVC.swift
//  goalpost-app
//
//  Created by Alex LaDue on 4/21/18.
//  Copyright © 2018 Alex LaDue. All rights reserved.
//

import UIKit
import CoreData

let appDelegate = UIApplication.shared.delegate as? AppDelegate

class GoalsVC: UIViewController {

    // Outlets
    @IBOutlet weak var tableView: UITableView!
    
    // What to peform when the view loads
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }


    //Actions
    @IBAction func addGoalBtnWasPressed(_ sender: Any) {
        guard let createGoalVC = storyboard?.instantiateViewController(withIdentifier: "CreateGoalVC") else {return}
        presentDetail(createGoalVC)
    }
    
    
    
}

extension GoalsVC: UITableViewDelegate, UITableViewDataSource{
    //3 main things for a table view: "Numnber of sections in tableview", "Number of rows in section", and "Cell for row at index path"
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell") as? GoalCell else {return UITableViewCell()}
        cell.configureCell(description: "Eat salad twice a week.", type: .shortTerm, goalProgressAmount: 2)
        return cell
    }
}
