//
//  GameOverViewController.swift
//  FirstRpg
//
//  Created by Umut Sever on 18.02.2020.
//  Copyright © 2020 Umut Sever. All rights reserved.
//

import UIKit

class GameOverViewController: UIViewController {
    @IBOutlet weak var gameOverScreen: UILabel!
    
    var mentalCurrent: Int?
    var pyhsicalCurrent: Int?
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        
  
        
        if self.mentalCurrent == 0 {
            gameOverScreen.text = "BEYNİN YETMEDİ"
        }
        if self.pyhsicalCurrent == 0 {
            gameOverScreen.text = "İKTİDARSIZ!"
        }

    }
    

    @IBAction func restartGame(_ sender: UIButton) {
        
        performSegue(withIdentifier: "goToRestart", sender: self)
        
    }
    

}
