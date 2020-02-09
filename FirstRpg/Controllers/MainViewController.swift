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
    
    @IBOutlet weak var fButtonOutlet: UIButton!
    @IBOutlet weak var sButtonOutlet: UIButton!
    @IBOutlet weak var tButtonOutlet: UIButton!
    @IBOutlet weak var frButtonOutlet: UIButton!
    @IBOutlet weak var ffthButtonOutlet: UIButton!
    

  
    
    var storyBankDic : [String : String] =
                    ["prologue" : "Lanet olsun...",
                    "storyOne" : "Burada storyOne texti olcak",
                    "storyTwo" : "Burada storyTwo texti olcak",
                    "storyThree" : "Burada storyThree texti olcak",
                    "storyFour" : "Burada storyFour texti olcak",
                    "storyFive" : "Burada storyFive texti olcak"]
            

    var storySelectionBankDic : [String : String] =
                    [
                    "epilogueLeft"      : "Arkadaşının arabası...",
                    "epilogueRight"     : "Otobüs soforu",
                    "storyOneLeft"      : "Burada storyOneLeft texti olcak",
                    "storyOneRight"     : "Burada storyOneRight texti olcak",
                    "storyTwoLeft"      : "Burada storyTwoLeft texti olcak",
                    "storyTwoRight"     : "Burada storyTwoRight texti olcak",
                    "storyThreeLeft"    : "Burada storyThreeLeft texti olcak",
                    "storyThreeRight"   : "Burada storyThreeRight texti olcak",
                    "storyFourLeft"     : "Burada storyFourLeft texti olcak",
                    "storyFourRight"    : "Burada storyFourRight texti olcak",
                    "storyFiveLeft"     : "Burada storyFiveLeft texti olcak",
                    "storyFiveRight"    : "Burada storyFiveRight texti olcak"
                    ]
    
    var storySelectionStatsBankDic : [String : Int] = ["str" : 2, "dex" : 2, "wis" : 1]
 
                   
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        allocatedSkillLog()
        makeAllocatedStatsDic()
        
    }
    
    @IBAction func backToMain(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func mainRollButton(_ sender: UIButton) {

        button1()
        button2()
        button3()
        button4()
        button5()
    }
    
    
    
    
               
            
    //        @IBOutlet weak var fButtonOutlet: UIButton!
    //           @IBOutlet weak var sButtonOutlet: UIButton!
    //           @IBOutlet weak var tButtonOutlet: UIButton!
    //           @IBOutlet weak var frButtonOutlet: UIButton!
    //           @IBOutlet weak var ffthButtonOutlet: UIButton!
            
             
    func button1 () {
        fButtonOutlet.setImage(UIImage(named: diceRoller()), for: .normal)
        
      
        
    }
    func button2 () {

        sButtonOutlet.setImage(UIImage(named: diceRoller()), for: .normal)
    }
    func button3 () {

        tButtonOutlet.setImage(UIImage(named: diceRoller()), for: .normal)
    }
    func button4 () {

        frButtonOutlet.setImage(UIImage(named: diceRoller()), for: .normal)
    }
    func button5 () {

        ffthButtonOutlet.setImage(UIImage(named: diceRoller()), for: .normal)
    }
   
    
    
    
    
    
    
    
    func allocatedSkillLog() {
        
//        print(characterAllocatedStr!)
//        print(characterAllocatedDex!)
//        print(characterAllocatedCon!)
//        print(characterAllocatedWis!)
//        print(characterAllocatedInt!)
//        print(characterAllocatedCha!)
  
    }
    
    // This func makes a dict from char allocated stats
    func makeAllocatedStatsDic () {
        let allocatedStatsDic : [String: Int] = ["str": characterAllocatedStr!,
                                                 "dex": characterAllocatedDex!,
                                                 "con": characterAllocatedCon!,
                                                 "wis": characterAllocatedWis!,
                                                 "int": characterAllocatedInt!,
                                                 "cha": characterAllocatedCha!]
        
        
    }
    
    // This func makes a dict from char allocated stats and make dice percentages
    func makeAllocatedStatsPercDic () {
        let allocatedStatsPercDic : [String: Int] = ["str": characterAllocatedStr!*5,
                                                 "dex": characterAllocatedDex!*5,
                                                 "con": characterAllocatedCon!*5,
                                                 "wis": characterAllocatedWis!*5,
                                                 "int": characterAllocatedInt!*5,
                                                 "cha": characterAllocatedCha!*5]
       
        
    }
    
 
    
    
    
   // This func rolls dice for player
    func diceRoller () -> String {
        let allocatedStatsDiceDic : [String: Int] =
            ["str": characterAllocatedStr!+1*5,
             "dex": characterAllocatedDex!+1*5,
             "con": characterAllocatedCon!+1*5,
             "wis": characterAllocatedWis!+1*5,
             "int": characterAllocatedInt!+1*5,
             "cha": characterAllocatedCha!+1*5]
        
        var pipi = [String: Int]()
        var sum = 0
        
        var ata = [0]
        
        var alp : String
        var lastVersion : String
        
        for (key, b) in allocatedStatsDiceDic {
            
                  
            var found = false
            for (i, value) in  storySelectionStatsBankDic {
                if key == i {
                    found = true
                    
                    break
                    
                }
            }
            
            if found  {
                
                
                sum += b
                
               
                ata.append(b)
                
                pipi.updateValue(sum, forKey: key)
                
            }
            
        }
        let umut = Int.random(in: 1...sum)
        
        
        let sortedPipi = pipi.sorted{ $1.1 > $0.1 }
       
        
        if umut <= sortedPipi[0].value {
           
            alp = sortedPipi[0].key
        } else if umut <= sortedPipi[1].value {
           
            alp = sortedPipi[1].key
        } else {
            
            alp = sortedPipi[2].key
        }
       
        lastVersion = alp + ".png"
        
         print("Last Version:", lastVersion)
        return lastVersion
    }
   
 
        

    
}
