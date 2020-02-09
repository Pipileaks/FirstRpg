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
    @IBOutlet weak var nextButtonOutlet: UIButton!
    
    
    
    
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
    var storyInt = ["str", "str", "dex", "dex", "wis", "z"]
    var controlMeka : Bool?
    var rollCount = 0
    var arrayss = ["z"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        allocatedSkillLog()
        makeAllocatedStatsDic()
        
    }
   

    @IBAction func firstButtonAction(_ sender: UIButton) {
        fButtonOutlet.isUserInteractionEnabled = true
        
        if fButtonOutlet.isUserInteractionEnabled == true {
            fButtonOutlet.isUserInteractionEnabled = false
            fButtonOutlet.setTitle("Kitlendi", for: .normal)
           
        } else if fButtonOutlet.isUserInteractionEnabled == false {
            fButtonOutlet.isUserInteractionEnabled = true
            fButtonOutlet.setTitle("", for: .normal)
            
        }
    }
    
    @IBAction func secondButtonAction(_ sender: UIButton) {
        
        sButtonOutlet.isUserInteractionEnabled = true

        if sButtonOutlet.isUserInteractionEnabled == true {
            sButtonOutlet.isUserInteractionEnabled = false
            sButtonOutlet.setTitle("Kitlendi", for: .normal)

        }
         if sButtonOutlet.isUserInteractionEnabled == false {
            sButtonOutlet.isUserInteractionEnabled = true
            sButtonOutlet.setTitle("", for: .normal)

        }
        
    }
    @IBAction func thirdButtonAction(_ sender: UIButton) {
        tButtonOutlet.isUserInteractionEnabled = true

        if tButtonOutlet.isUserInteractionEnabled == true {
            tButtonOutlet.isUserInteractionEnabled = false
            tButtonOutlet.setTitle("Kitlendi", for: .normal)

        } else if tButtonOutlet.isUserInteractionEnabled == false {
            tButtonOutlet.isUserInteractionEnabled = true
            tButtonOutlet.setTitle("", for: .normal)

        }
    }
    @IBAction func fourthButtonAction(_ sender: UIButton) {
     frButtonOutlet.isUserInteractionEnabled = true

        if frButtonOutlet.isUserInteractionEnabled == true {
            frButtonOutlet.isUserInteractionEnabled = false
            frButtonOutlet.setTitle("Kitlendi", for: .normal)

        } else if frButtonOutlet.isUserInteractionEnabled == false {
            frButtonOutlet.isUserInteractionEnabled = true
            frButtonOutlet.setTitle("", for: .normal)

        }
    }
    @IBAction func fifthButtonAction(_ sender: UIButton) {
        ffthButtonOutlet.isUserInteractionEnabled = true

        if ffthButtonOutlet.isUserInteractionEnabled == true {
            ffthButtonOutlet.isUserInteractionEnabled = false
            ffthButtonOutlet.setTitle("Kitlendi", for: .normal)

        } else if ffthButtonOutlet.isUserInteractionEnabled == false {
            ffthButtonOutlet.isUserInteractionEnabled = true
            ffthButtonOutlet.setTitle("", for: .normal)

        }
    }
    
    
    
    
    
    
    
    @IBAction func nextButton(_ sender: UIButton) {
        //Eğer hepsi tutuyorsa bu button "başarılı" aktif
        //Eğer 3 roll hakkında başarısız olursa  bu button "başarısız" aktif
        
        
    }
    
    
    @IBAction func backToMain(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func mainRollButton(_ sender: UIButton) {
        
        //Must Be A Counter
        
        
        //Kaç defa basıldı
        rollCount += 1
        if rollCount == 3 {
            sender.isUserInteractionEnabled = false
            sender.setTitle("Hakkın Bitti", for: .normal)
        }
        

        
        
        //Kaç defa basıldı
        
       
        var sortedArray = storyInt.sorted(by: >)
        
    

        
        
        if fButtonOutlet.isUserInteractionEnabled == true {
            arrayss.append(button1())
            
        }
        if sButtonOutlet.isUserInteractionEnabled == true {
            arrayss.append(button2())
            
        }
        if tButtonOutlet.isUserInteractionEnabled == true {
            arrayss.append(button3())
            
        }
        if frButtonOutlet.isUserInteractionEnabled == true {
            arrayss.append(button4())
            
        }
        if ffthButtonOutlet.isUserInteractionEnabled == true {
            arrayss.append(button5())
            
        }
        
        
       
        
        
        
        
        var sortedButtonArray = arrayss.sorted(by: >)
        
        
        
        func control() -> Bool {
            if sortedArray == sortedButtonArray {
                return true
            } else {
                return false
            }
            
        }
        
        controlMeka = control()
        
        var strCounter = 0
        var wisCounter = 0
        var dexCounter = 0
        
        for i in arrayss {

            if i == "str" {
                strCounter += 1
            } else if i == "wis" {
                wisCounter += 1
            } else if i == "dex" {
                dexCounter += 1
            }
            
        }
        
        print("Str:", strCounter, "Wis:", wisCounter, "Dex:", dexCounter)
        
        
        //Next Button Control
        var controlNext = controlMeka
        
        if controlNext == true {
            nextButtonOutlet.isHidden = false
        } else {
            nextButtonOutlet.isHidden = true
        }
        //Next Button Control
        
    }
    
    

    
    
    func button1 () -> String {
        
        
        
        let button1Image = diceRoller()
        
        fButtonOutlet.setImage(UIImage(named: button1Image + ".png"), for: .normal)
        
        //       var donen = Dictionary<String, Int>()
        //
        //        donen[button1Image] = 1
        
        return button1Image
    }
    func button2 () -> String {
        
        let button2Image = diceRoller()
        
        sButtonOutlet.setImage(UIImage(named: button2Image + ".png"), for: .normal)
        return button2Image
    }
    func button3 () -> String  {
        
        let button3Image = diceRoller()
        tButtonOutlet.setImage(UIImage(named: button3Image + ".png"), for: .normal)
        return button3Image
    }
    func button4 () -> String  {
        
        let button4Image = diceRoller()
        frButtonOutlet.setImage(UIImage(named: button4Image + ".png"), for: .normal)
        return button4Image
    }
    func button5 () -> String  {
        
        let button5Image = diceRoller()
        ffthButtonOutlet.setImage(UIImage(named: button5Image + ".png"), for: .normal)
        return button5Image
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
        
        lastVersion = alp
        
        print("Last Version:", lastVersion)
        return lastVersion
    }
    
    
    
    
    
}
