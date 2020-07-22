//
//  LogoutViewController.swift
//  CobGrade
//
//  Created by Sachin Karki on 4/24/20.
//  Copyright © 2020 HimalayanTigers. All rights reserved.
//

import UIKit
import Firebase

//Class for the logout page
class LogoutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //Method when the Logout button is pressed
    @IBAction func logoutbuttonPressed(_ sender: Any) {
        do {
            try Auth.auth().signOut()
        }catch{
            print("There was a problem signing out")
        }
        
        guard(navigationController?.popToRootViewController(animated: true)) != nil
            else{
                print("You are Logged out Successfully!")
                return
        }
        
    }
    
    //Button function when the button is pressed
    @IBAction func GotoMainScreen(_ sender: Any) {
        self.performSegue(withIdentifier: "gotoMainScreen", sender: self)
        
    }
}
