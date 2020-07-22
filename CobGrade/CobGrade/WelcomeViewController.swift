//
//  ViewController.swift
//  CobGrade
//
//  Created by Sachin Karki on 4/24/20.
//  Copyright © 2020 HimalayanTigers. All rights reserved.
//

import UIKit

//Main Screen class
class WelcomeViewController: UIViewController {
    
     //Link Logout Button to the Main Storyboard
    @IBOutlet weak var loginButton: UIButton!
    
     //Link SignUp Button to the Main Storyboard
    @IBOutlet weak var signupButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //The borders for the buttons
        loginButton.layer.borderWidth = 2
        loginButton.layer.cornerRadius = 10
        loginButton.layer.borderColor = UIColor.white.cgColor
        
        signupButton.layer.borderWidth = 2
        signupButton.layer.cornerRadius = 10
        signupButton.layer.borderColor = UIColor.white.cgColor
        
    }


}

