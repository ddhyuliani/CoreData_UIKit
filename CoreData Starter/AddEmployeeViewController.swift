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
    
    //TODO: create context
    
    //TODO: create variable to store Employee Object
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    
    @IBAction func saveButton(_ sender: Any) {
        
        //TODO: Create employee Object
        
        //TODO: Save the data
        
        // when the save button pressed, it will pop back to the previous page
        navigationController?.popViewController(animated: true)
    }
    
}
