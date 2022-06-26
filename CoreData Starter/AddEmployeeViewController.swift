//
//  AddEmployeeViewController.swift
//  CoreData Starter
//
//  Created by Local Administrator on 26/06/22.
//

import UIKit

class AddEmployeeViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        navigationItem.title = "Add New Employee"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(dismissView))
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(saveData))
    }
    
    @objc func dismissView(){
        
        dismiss(animated: true, completion: nil)
    }
    
    @objc func saveData(){
        
        let textfieldName = nameTextField.text
        let textfieldAge = ageTextField.text
        
        //TODO: Create employee Object
        
        //TODO: Save the data
        
        //TODO: Re-fetch the data
        
        dismissView()
    }
    
}
