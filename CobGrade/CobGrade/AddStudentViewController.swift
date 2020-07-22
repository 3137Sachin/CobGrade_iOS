//
//  AddStudentViewController.swift
//  CobGrade
//
//  Created by Sachin Karki on 5/1/20.
//  Copyright © 2020 HimalayanTigers. All rights reserved.
//

import UIKit
import FirebaseDatabase

//Class for adding student
class AddStudentViewController: UIViewController {
    
    // BUtton for the text field for the first name
    @IBOutlet weak var textView_fname: UITextField!
    
    // BUtton for the text field for the last name
    @IBOutlet weak var textView_lname: UITextField!
    
    // BUtton for the text field for the student ID
    @IBOutlet weak var textView_id: UITextField!
    
    var ref:DatabaseReference?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        ref = Database.database().reference()
        
    }
    
    // Adding the student info to the firebase Database (First name, Last name, ID)
    @IBAction func addStudent(_ sender: Any) {
        ref?.child("students").childByAutoId().setValue(textView_fname.text)
        ref?.child("students").childByAutoId().setValue(textView_lname.text)
        ref?.child("students").childByAutoId().setValue(textView_id.text)
       
        presentingViewController?.dismiss(animated: true, completion: nil)
    }
    

    // Cancel button
    @IBAction func cancel_add(_ sender: Any) {
    }
    
   
    
    

}
