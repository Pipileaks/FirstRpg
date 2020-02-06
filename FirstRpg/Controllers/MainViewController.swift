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
    
    var storySelectionStatsBankDic : [String : [String : Int]] =
                    [
                    "epilogueLeft"    : ["str" : 2, "dex" : 2, "con" : 1, "physical" : 10],
                    "epilogueRight"   : ["str" : 2, "dex" : 2, "con" : 1, "mental" : 10],
                    "storyOneLeft"    : ["str" : 2, "dex" : 2, "con" : 1, "physical" : 10],
                    "storyOneRight"   : ["str" : 2, "dex" : 2, "con" : 1, "mental" : 10],
                    "storyTwoLeft"    : ["str" : 2, "dex" : 2, "con" : 1, "physical" : 10],
                    "storyTwoRight"   : ["str" : 2, "dex" : 2, "con" : 1, "mental" : 10],
                    "storyThreeLeft"  : ["str" : 2, "dex" : 2, "con" : 1, "physical" : 10],
                    "storyThreeRight" : ["str" : 2, "dex" : 2, "con" : 1, "mental" : 10],
                    "storyFourLeft"   : ["str" : 2, "dex" : 2, "con" : 1, "physical" : 10],
                    "storyFourRight"  : ["str" : 2, "dex" : 2, "con" : 1, "mental" : 10],
                    "storyFiveLeft"   : ["str" : 2, "dex" : 2, "con" : 1, "physical" : 10],
                    "storyFiveRight"  : ["str" : 2, "dex" : 2, "con" : 1, "mental" : 10]
                    ]
    
    

    
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
        print(storySelectionStatsBankDic["epilogueLeft"]!["str"]!)
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
    func diceRoller () {
        var allocatedStatsDiceDic : [String: Int] =
            ["str": characterAllocatedStr!*5,
             "dex": characterAllocatedDex!*5,
             "con": characterAllocatedCon!*5,
             "wis": characterAllocatedWis!*5,
             "int": characterAllocatedInt!*5,
             "cha": characterAllocatedCha!*5]
      
        
        var asdkj = storySelectionStatsBankDic.keys
        
        var sum = 0
        for i in storySelectionStatsBankDic["epilogueLeft"]!.keys {
            
            while storySelectionStatsBankDic["epilogueLeft"]!.keys = "str"     {
                
            sum += i
            }
            
        
        }
        print(sum)
//        let random = Int.arc4random(in: 1...sum)
        
        
    }
}
