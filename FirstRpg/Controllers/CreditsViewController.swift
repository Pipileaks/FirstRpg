//
//  CreditsViewController.swift
//  FirstRpg
//
//  Created by Umut Sever on 18.02.2020.
//  Copyright © 2020 Umut Sever. All rights reserved.
//

import UIKit

class CreditsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func restartAgain(_ sender: UIButton) {
        
        performSegue(withIdentifier: "goToRestartAgain", sender: self)
    }
    

}
