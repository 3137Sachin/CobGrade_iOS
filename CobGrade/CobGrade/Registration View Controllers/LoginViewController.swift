//
//  LoginViewController.swift
//  CobGrade
//
//  Created by Sachin Karki on 4/24/20.
//  Copyright © 2020 HimalayanTigers. All rights reserved.
//

import UIKit
import Firebase

//Class for the login page
class LoginViewController: UIViewController {

    //Link Logout Button to the Main Storyboard
    @IBOutlet weak var loginbutton: UIButton!
    
    //Link Email Text field Button to the Main Storyboard
    @IBOutlet weak var emailTecxtField: UITextField!
    
    //Link Password text field Button to the Main Storyboard
    @IBOutlet weak var passwordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //The borders for the buttons
        loginbutton.layer.borderWidth = 2
        loginbutton.layer.cornerRadius = 10
        loginbutton.layer.borderColor = UIColor.black.cgColor
        
    }
        
    //Method when the login button is pressed
    @IBAction func loginButtonPressed(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTecxtField.text!, password: passwordText.text!) { (user, error)
            in
            if error != nil{
                print(error!)
            }else{
                print("Login Successful")
                self.performSegue(withIdentifier: "GoHome", sender: self)
            }
            
        }
        
    }
    

}
