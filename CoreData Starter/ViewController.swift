//
//  ViewController.swift
//  CoreData Starter
//
//  Created by Dian Dinihari on 24/06/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var employeeTable: UITableView!
    
    
    //TODO: create Reference to managed object context
    
    //TODO: create array object
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        employeeTable.dataSource = self
        employeeTable.delegate = self
    }
    
    func fetchEmployee() {
        
        //TODO: fetch the data from the CoreData to display in the TableView
        
    }
    
}


// MARK: - UITableView DataSource

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //TODO: return the number of rows
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = employeeTable.dequeueReusableCell(withIdentifier: "employeeCell") as! EmployeeTableViewCell
        
        //TODO: Get data from the array & set the label on the cell
        
        
        return cell
    }
}

// MARK: - UITableView Delegate

extension ViewController: UITableViewDelegate {
    
    // Swipe ke kanan - Edit
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        // create swipe action
        let action = UIContextualAction(style: .normal, title: "Edit") {(action, view, completionHandler) in
            let cell = self.storyboard?.instantiateViewController(withIdentifier: "addEmployee") as! AddEmployeeViewController
            
            //TODO: Which employee to edit/update
            
            //TODO: set the parameter if edit action is choosen
            
    
            self.employeeTable.deselectRow(at: indexPath, animated: true)
            // move to add employee viewController
            self.navigationController?.pushViewController(cell, animated: true)
        }
        return UISwipeActionsConfiguration(actions: [action])
    }
    
    // Swipe ke kiri - Delete
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        // create swipe action
        let action = UIContextualAction(style: .destructive, title: "Delete") {(action, view, completionHandler) in
            
            self.showDeleteWarning(for: indexPath)
        }
        return UISwipeActionsConfiguration(actions: [action])
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func showDeleteWarning(for indexPath: IndexPath) {
        
        // Create the alert and actions
        let alert = UIAlertController(title: "Delete employee", message: "Are you sure you want to delete this employee?", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        let deleteAction = UIAlertAction(title: "Delete", style: .destructive) { _ in
                
                //TODO: Which employee to remove
                
                //TODO: Delete the employee
                
                //TODO: Save the data
                
                //TODO: Re-fetch the data
                
        }
        // Add the actions to the alert controller
        alert.addAction(cancelAction)
        alert.addAction(deleteAction)

        // Present the alert controller
        present(alert, animated: true, completion: nil)
    }
}


