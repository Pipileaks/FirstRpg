//
//  MainViewController.swift
//  FirstRpg
//
//  Created by Umut Sever on 3.02.2020.
//  Copyright © 2020 Umut Sever. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    var characterAllocatedSkills: Int?
  
    
    


    
    @IBOutlet weak var strLabel: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        
        
        strLabel.text = String(characterAllocatedSkills!)
    }
    
    @IBAction func backToMain(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
}
