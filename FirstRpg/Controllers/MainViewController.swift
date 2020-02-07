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
    
    var storySelectionStatsBankDic : [String : Int] = ["int" : 2, "cha" : 2, "wis" : 1]
 
                   
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        allocatedSkillLog()
        makeAllocatedStatsDic()
        diceRoller()
    }
    
    @IBAction func backToMain(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    func allocatedSkillLog() {
        
        print(characterAllocatedStr!)
        print(characterAllocatedDex!)
        print(characterAllocatedCon!)
        print(characterAllocatedWis!)
        print(characterAllocatedInt!)
        print(characterAllocatedCha!)
  
    }
    
    // This func makes a dict from char allocated stats
    func makeAllocatedStatsDic () {
        var allocatedStatsDic : [String: Int] = ["str": characterAllocatedStr!,
                                                 "dex": characterAllocatedDex!,
                                                 "con": characterAllocatedCon!,
                                                 "wis": characterAllocatedWis!,
                                                 "int": characterAllocatedInt!,
                                                 "cha": characterAllocatedCha!]
        
        
    }
    
    // This func makes a dict from char allocated stats and make dice percentages
    func makeAllocatedStatsPercDic () {
        var allocatedStatsPercDic : [String: Int] = ["str": characterAllocatedStr!*5,
                                                 "dex": characterAllocatedDex!*5,
                                                 "con": characterAllocatedCon!*5,
                                                 "wis": characterAllocatedWis!*5,
                                                 "int": characterAllocatedInt!*5,
                                                 "cha": characterAllocatedCha!*5]
       
        
    }
    
 
    
    
    
   // This func rolls dice for player
    func diceRoller () -> String {
        var allocatedStatsDiceDic : [String: Int] =
            ["str": characterAllocatedStr!*5,
             "dex": characterAllocatedDex!*5,
             "con": characterAllocatedCon!*5,
             "wis": characterAllocatedWis!*5,
             "int": characterAllocatedInt!*5,
             "cha": characterAllocatedCha!*5]
        
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
                print("Skill Başına Toplam Değer:", sum)
                print(key)
                ata.append(b)
                
                pipi.updateValue(sum, forKey: key)
                
            }
            
        }
        var umut = Int.random(in: 1...sum)
        print("Random Number:", umut)
        print("Toplam Değer:", sum)
        var sortedPipi = pipi.sorted{ $1.1 > $0.1 }
        print("Sortlu:", sortedPipi)
        
        if umut <= sortedPipi[0].value {
            print(sortedPipi[0].key)
            alp = sortedPipi[0].key
        } else if umut <= sortedPipi[1].value {
            print(sortedPipi[1].key)
            alp = sortedPipi[1].key
        } else {
            print(sortedPipi[2].key)
            alp = sortedPipi[2].key
        }
        print("Alp Değer:", alp)
        lastVersion = alp + ".png"
        print("Last Version:", lastVersion)
        return lastVersion
    }
   
 
        

    
}
