//
//  MainViewController.swift
//  FirstRpg
//
//  Created by Umut Sever on 3.02.2020.
//  Copyright © 2020 Umut Sever. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    var characterAllocatedStr: Int?
    var characterAllocatedDex: Int?
    var characterAllocatedCon: Int?
    var characterAllocatedWis: Int?
    var characterAllocatedInt: Int?
    var characterAllocatedCha: Int?
    
    @IBOutlet weak var strLabel: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        allocatedSkillLog()
    }
    
    @IBAction func backToMain(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    func allocatedSkillLog() {
        
        print(characterAllocatedStr)
        print(characterAllocatedDex)
        print(characterAllocatedCon)
        print(characterAllocatedWis)
        print(characterAllocatedInt)
        print(characterAllocatedCha)
        
    }
    

}
