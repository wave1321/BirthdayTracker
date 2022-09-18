//
//  ViewController.swift
//  BirthdayTracker
//
//  Created by Admin on 17.09.2022.
//

import UIKit

class AddBirthdayViewController: UIViewController {

    @IBOutlet var firstNameTextField: UITextField!
    @IBOutlet var lastNameTextField: UITextField!
    @IBOutlet var birthdatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        birthdatePicker.maximumDate = Date()
    }
    
    @IBAction func saveTapped(_ sender: UIBarButtonItem) {
        
        let firstName = firstNameTextField.text ?? ""
        let lastName = lastNameTextField.text ?? ""
        let birthdate = birthdatePicker.date
        let newBirthday = Birthday(firstName: firstName, lastName: lastName,
         birthdate: birthdate)
        
        print("Создана запись о дне рождения!")
        print("Имя: \(newBirthday.firstName)")
        print("Фамилия: \(newBirthday.lastName)")
        print("День рождения: \(newBirthday.birthdate)")
        
    }
    
    @IBAction func cancelTapped(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }

}

