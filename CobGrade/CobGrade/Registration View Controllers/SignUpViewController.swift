//
//  SignUpViewController.swift
//  CobGrade
//
//  Created by Sachin Karki on 4/24/20.
//  Copyright © 2020 HimalayanTigers. All rights reserved.
//

import UIKit
import Firebase

//Class for the signup page
class SignUpViewController: UIViewController {

    //Link SignUp Button to the Main Storyboard
    @IBOutlet weak var signup: UIButton!
    
     //Link Email Text field Button to the Main Storyboard
    @IBOutlet weak var emailTextField: UITextField!
    
    //Link Password text field Button to the Main Storyboard
    @IBOutlet weak var passwordText: UITextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
                //The borders for the buttons
               signup.layer.borderWidth = 2
               signup.layer.cornerRadius = 10
               signup.layer.borderColor = UIColor.black.cgColor
               
    }
    

    //Method when the Signup button is pressed
    @IBAction func signupPressed(_ sender: Any) {
        Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordText.text!) { (user, error) in
            if error != nil {
                print(error!)
            }else{
                print("Registration Sucessful")
                self.performSegue(withIdentifier: "gotoHome", sender: self)
            } 
        }
    }
}

