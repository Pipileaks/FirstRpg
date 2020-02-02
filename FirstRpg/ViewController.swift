//
//  ViewController.swift
//  FirstRpg
//
//  Created by Umut Sever on 31.01.2020.
//  Copyright © 2020 Umut Sever. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var str_value_cal : Int = 0
    var dex_value_cal : Int = 0
    var str_max_cal : Int = 0
    var dex_max_cal : Int = 0
    var maks = 6
    
    
    @IBOutlet weak var str_value: UILabel!
    @IBOutlet weak var dex_value: UILabel!
    
    @IBAction func str_value_changer(_ sender: UIStepper) {
        str_value.text = String(sender.value)
        str_value_cal = Int(sender.value)
        print(str_value_cal)
        str_max_cal = Int(sender.maximumValue)
        
      
        let calculation = str_value_cal + dex_value_cal
        
        sender.maximumValue = Double(calculation >= maks ? str_value_cal: maks)
        dex_max_cal = calculation >= maks ? dex_value_cal : maks
    
        
    }

    @IBAction func dex_value_changer(_ sender: UIStepper) {
        dex_value.text = String(sender.value)
        dex_value_cal = Int(sender.value)
        dex_max_cal = Int(sender.maximumValue)
        print(dex_value_cal)
        
         let calculation = str_value_cal + dex_value_cal
        
        sender.maximumValue = Double(calculation >= maks ? dex_value_cal: maks)
        str_max_cal = calculation >= maks ? str_value_cal : maks
        
        
        

    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
 
    

    
}

