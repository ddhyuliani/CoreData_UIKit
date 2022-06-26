//
//  ViewController.swift
//  CoreData Starter
//
//  Created by Dian Dinihari on 24/06/22.
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
        
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "addEmployee") as! AddEmployeeViewController
        
        navigationController?.present(UINavigationController(rootViewController: vc), animated: true)
        
        /*
        // create Alert
        let alert = UIAlertController(title: "Add employee", message: "Input employee detail", preferredStyle: .alert)
        alert.addTextField { (nameTextField) in
            nameTextField.placeholder = "Please employee name name"
        }
        alert.addTextField { (ageTextField) in
            ageTextField.placeholder = "Please input employee age"
        }
        
        // configure the action
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in }
        let submitAction = UIAlertAction(title: "Add", style: .default) { (action) in
            
            // get the textfield input for the alert
            let textfieldName = alert.textFields?[0]
            let textfieldStatus = alert.textFields?[1]
            
            //TODO: Create employee Object
            
            //TODO: Save the data
            
            //TODO: Re-fetch the data
            
        }
        
        // add action
        alert.addAction(cancelAction)
        alert.addAction(submitAction)
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
         */
    }
}

// MARK: - UITableView DataSource

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = employeeTable.dequeueReusableCell(withIdentifier: "employeeCell") as! EmployeeTableViewCell
        
        //TODO: Get data from the array & set the label
        
        
        return cell
    }
}

// MARK: - UITableView Delegate

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        employeeTable.deselectRow(at: indexPath, animated: true)
        
        // create Alert
        let alert = UIAlertController(title: "Edit employee", message: "Change name", preferredStyle: .alert)
        alert.addTextField { (nameTextField) in
        }
        alert.addTextField { (AgeTextField) in
        }
        
        // get the textfield data for the alert
        let textfieldName = alert.textFields?[0]
        let textfieldAge = alert.textFields?[1]
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in }
        let saveAction = UIAlertAction(title: "Save", style: .default) { (action) in
            
            //TODO: Edit(Update) name property of employee object
            
            //TODO: Save the data
            
            //TODO: Re-fetch the data
            
        }
        
        // add the action
        alert.addAction(cancelAction)
        alert.addAction(saveAction)
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
    
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
        
        //Create the alert and actions
        let alert = UIAlertController(title: "Delete employee", message: "Are you sure you want to delete this employee?", preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)

        let deleteAction = UIAlertAction(title: "Delete", style: .destructive) { _ in
            DispatchQueue.main.async {
                
                //TODO: Which employee to remove
                
                //TODO: Delete the employee
                
                //TODO: Save the data
                
                //TODO: Re-fetch the data
                
            }
        }
        //Add the actions to the alert controller
        alert.addAction(cancelAction)
        alert.addAction(deleteAction)

        //Present the alert controller
        present(alert, animated: true, completion: nil)
    }
}


