//
//  ViewController.swift
//  FirstRpg
//
//  Created by Umut Sever on 31.01.2020.
//  Copyright © 2020 Umut Sever. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var str_value: UILabel!
    
    @IBAction func str_value_changer(_ sender: UIStepper) {
        str_value.text = String(sender.value)
        var str_value_cal = sender.value
        print(str_value_cal)
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
}

