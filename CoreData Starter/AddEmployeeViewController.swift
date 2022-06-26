//
//  AddEmployeeViewController.swift
//  CoreData Starter
//
//  Created by Local Administrator on 26/06/22.
//

import UIKit
import CoreData

class AddEmployeeViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    var employeeData: [Employee] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        navigationItem.title = "Add New Employee"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(dismissView))
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(saveData))
        
        fetchEmployee()
    }
    
    func fetchEmployee(){
        
        do {
            self.employeeData = try context.fetch(Employee.fetchRequest())
        }
        catch {
            
        }
    }
    
    @objc func dismissView(){
        
        dismiss(animated: true, completion: nil)
    }
    
    @objc func saveData(){
        
        //TODO: Create employee Object
        let newEmployee = Employee(context: context)
        newEmployee.name = nameTextField.text
        newEmployee.age = ageTextField.text
        
        //TODO: Save the data
        do {
            try self.context.save()
        }
        catch {
            
        }

        //re-fetch the data
        self.fetchEmployee()
        
        dismissView()
    }
    
}
