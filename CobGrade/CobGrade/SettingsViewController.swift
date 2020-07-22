//
//  SettingsViewController.swift
//  CobGrade
//
//  Created by Sachin Karki on 5/1/20.
//  Copyright © 2020 HimalayanTigers. All rights reserved.
//

import UIKit

//Class for the settings screen
class SettingsViewController: UIViewController {

   
    // Dark mode button outlet
    @IBOutlet weak var outlsetSwitch: UISwitch!
    
    // Label outlet
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // Switch for the dark mode button
    @IBAction func darkAction(_ sender: Any) {
        if outlsetSwitch.isOn == true {
            view.backgroundColor = UIColor.black
            label.textColor = UIColor.white
        }else{
            view.backgroundColor = UIColor.white
            label.textColor = UIColor.black
        }
        
    }
    
    }
    
    
    

