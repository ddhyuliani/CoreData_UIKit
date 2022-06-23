//
//  ViewController.swift
//  CoreData Starter
//
//  Created by Local Administrator on 24/06/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var employeeTable: UITableView!
    
    //TODO: create context
    
    //TODO: create var data for the table
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        employeeTable.dataSource = self
        employeeTable.delegate = self
        
        // get items from the CoreData
        fetchEmployee()
    }
    
    func fetchEmployee() {
        
        //TODO: fetch the data from the CoreData to display in the TableView
        
    }
    
    
    @IBAction func addButton(_ sender: Any) {
        
        // create Alert
        let alert = UIAlertController(title: "Add employee", message: "Input employee detail", preferredStyle: .alert)
        alert.addTextField { (nameTextField) in
            nameTextField.placeholder = "Please employee name name"
        }
        alert.addTextField { (ageTextField) in
            ageTextField.placeholder = "Please input employee age"
        }
        
        // configure button handler
        let submitButton = UIAlertAction(title: "Add", style: .default) { (action) in
            
            //get the textfield input for the alert
            let textfieldName = alert.textFields?[0]
            let textfieldStatus = alert.textFields?[1]
            
            //TODO: Create employee Object
            
            //TODO: Save the data
            
            //TODO: Re-fetch the data
            
        }
        
        // add Submit button
        alert.addAction(submitButton)
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
}

// MARK: - UITableView DataSource

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //TODO: Get data from the array & set the label
        
        let cell = employeeTable.dequeueReusableCell(withIdentifier: "employeeCell") as! EmployeeTableViewCell
        
        return cell
    }
}

// MARK: - UITableView Delegate

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // create Alert
        let alert = UIAlertController(title: "Edit employee", message: "Change name", preferredStyle: .alert)
        alert.addTextField { (nameTextField) in
        }
        alert.addTextField { (AgeTextField) in
        }
        
        // get the textfield data for the alert
        let textfieldName = alert.textFields?[0]
        let textfieldAge = alert.textFields?[1]
        
        let saveButton = UIAlertAction(title: "Save", style: .default) { (action) in
            
            //TODO: Edit(Update) name property of employee object
            
            //TODO: Save the data
            
            //TODO: Re-fetch the data
            
        }
        // add Save button
        alert.addAction(saveButton)
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        // create swipe action
        let action = UIContextualAction(style: .destructive, title: "Delete") {(action, view, completionHandler) in
            
            //TODO: Which employee to remove
            
            //TODO: Delete the employee
            
            //TODO: Save the data
            
            //TODO: Re-fetch the data
            
        }
        return UISwipeActionsConfiguration(actions: [action])
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}


