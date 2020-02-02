//
//  ViewController.swift
//  FirstRpg
//
//  Created by Umut Sever on 31.01.2020.
//  Copyright © 2020 Umut Sever. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    var dex_value_cal = 0, str_value_cal = 0, int_value_cal = 0 //bunun degerini daha sonra hesaplamak icin kullanilacak.
    var dex_max_cal = 0, str_max_cal = 0, int_max_cal = 0 //
    var max = 6  // total stat pool
    
    
    
    
    @IBOutlet weak var str_value: UILabel!
    @IBOutlet weak var dex_value: UILabel!
    @IBOutlet weak var int_value: UILabel!
    
    let calculation = str_value_cal + dex_value_cal
    
    
    
    @IBAction func int_value_changer(_ sender: UIStepper) {
        
        logstuff()
        int_value.text = String(sender.value)
        
        
        
        
        
        print("int_value_cal: ", dex_value_cal)
        
    }
    
    @IBAction func str_value_changer(_ sender: UIStepper) { //comment here
        
        
        logstuff()
        str_value.text = String(sender.value)
        str_value_cal = Int(sender.value)
        str_max_cal = Int(sender.maximumValue)
        sender.maximumValue = Double(calculation >= max ? str_value_cal: max)
        dex_max_cal = calculation >= max ? dex_value_cal : max
       
        
    }

    @IBAction func dex_value_changer(_ sender: UIStepper) {
        logstuff()
        dex_value.text = String(sender.value)
        dex_value_cal = Int(sender.value)
        dex_max_cal = Int(sender.maximumValue)
        sender.maximumValue = Double(calculation >= max ? dex_value_cal: max)
        str_max_cal = calculation >= max ? str_value_cal : max
 
    }
    
    
    func logstuff (   ) {
        
        print("ALPALPALP")
        print("dex_value_cal: ", dex_value_cal)
        print("dex_value_cal: ", dex_value_cal)
        //print("sender.maximumValue: ", sender.maximumValue)
        print("str_value_cal: ", str_value_cal)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        

        // Do any additional setup after loading the view.
    }
   
 
    

    
}

