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
    @IBOutlet weak var leftButtonOutlet: UIButton!
    @IBOutlet weak var rightButtonOutlet: UIButton!
    
    @IBOutlet weak var physicalDamageCounter: UILabel!
    @IBOutlet weak var mentalDamageCounter: UILabel!
    
    @IBOutlet weak var leftSideOutlet: UILabel!
    @IBOutlet weak var rightSideOutlet: UILabel!
    @IBOutlet weak var rollButtonOutlet: UIButton!
    @IBOutlet weak var storyTextOutlet: UILabel!
    
    
    
    var storyBankDic : [String] =
       [ "Lanet olsun...",
       "Burada storyOne texti olcak",
       "Burada storyTwo texti olcak",
       "Burada storyThree texti olcak",
       "Burada storyFour texti olcak",
       "Burada storyFive texti olcak"]
   
   
   var storySelectionLeftBankDic : [String] =
       [
           "Arkadaşının arabası...",
           "Sol1",
           "Sol2",
           "Sol3",
           "Sol4",
           "Sol5",
   ]
   var storySelectionRightBankDic : [String] =
       [
           "Otobüs soforu",
           "Sağ1",
           "Sağ2",
           "Sağ3",
           "Sağ4",
           "Sağ5"
   ]
    
    
    var pyhsicalTotal = 100
    var mentalTotal = 100
    var leftCounter = 0 // İhtiyac olursa diye koyuldu daha sonra kaldırılabilir
    var rightCounter = 0 // İhtiyac olursa diye koyuldu daha sonra kaldırılabilir
    var storyCounter = 0 // Hikayede nerede olduğumuz belirleyecek değişken
    var whichStorySelectionStatsBankDic: [[String:Int]] = []
    var whichStory : [[String]] = []


    // İstediğimiz değerlerin yazıldığı arrayler bloğu
    // @Umut isimler mental ve fiziksel dictionary olarak değişse nasıl olur?
    var storyInt = [["str", "str", "str", "str", "str", "z"],["con", "int", "int", "int", "cha", "z"],["con", "int", "int", "int", "cha", "z"],["con", "int", "int", "int", "cha", "z"],["con", "int", "int", "int", "cha", "z"],["con", "int", "int", "int", "cha", "z"],["con", "int", "int", "int", "cha", "z"]]
     var storyInt2 = [["con", "int", "int", "int", "cha", "z"],["str", "str", "dex", "dex", "wis", "z"],["str", "str", "dex", "dex", "wis", "z"],["str", "str", "dex", "dex", "wis", "z"],["str", "str", "dex", "dex", "wis", "z"],["str", "str", "dex", "dex", "wis", "z"],["str", "str", "dex", "dex", "wis", "z"]]
    // İstediğimiz değerlerin yazıldığı arrayler bloğu
    
    // Hangi değerden kaç tane istediğimizin yazıldığı blok
    // @Umut isimler mental ve fiziksel dictionary olarak değişse nasıl olur?
    var storySelectionStatsBankDic = [["str" : 2, "dex" : 2, "wis" : 1],["cha" : 1, "wis" : 3, "int" : 1],["cha" : 1, "wis" : 3, "int" : 1],["cha" : 1, "wis" : 3, "int" : 1],["cha" : 1, "wis" : 3, "int" : 1],["cha" : 1, "wis" : 3, "int" : 1],["cha" : 1, "wis" : 3, "int" : 1],["cha" : 1, "wis" : 3, "int" : 1],["cha" : 1, "wis" : 3, "int" : 1]]
    var storySelectionStatsBankDic2 = [["con" : 1, "int" : 3, "cha" : 1],["str" : 2, "int" : 2, "cha" : 1],["str" : 2, "int" : 2, "cha" : 1],["str" : 2, "int" : 2, "cha" : 1],["str" : 2, "int" : 2, "cha" : 1],["str" : 2, "int" : 2, "cha" : 1],["str" : 2, "int" : 2, "cha" : 1],["str" : 2, "int" : 2, "cha" : 1]]
    // Hangi değerden kaç tane istediğimizin yazıldığı blok
    
    var rollCount = 0 // Kac defa rollendiğini sayar
    var arrayss = ["z"] // Kullanıcının attığı değerlerin yazıldığı array
    var controlMeka : Bool? // Kullanıcının seçtiği ve bizim istediğimiz değerleri kontrol etmeye yarar
     // Imajın ismini almak için olusturduğumuz değişkenler bloğu
    var fB = ""
    var sB = ""
    var tB = ""
    var frB = ""
    var ffthB = "" //
     // Imajın ismini almak için olusturduğumuz değişkenler bloğu
    var percentageRandomNumber = "" // Zarlara hangi statın geleceğini kontrol ettiğimiz rastgele sayı
    // Her tuş için ayrı ayrı appendleme işlemini kontrol etmeye yarayan counterlar bloğu
    var fcounter = true
    var scounter = true
    var tcounter = true
    var frcounter = true
    var ffthcounter = true
    // Her tuş için ayrı ayrı appendleme işlemini kontrol etmeye yarayan counterlar bloğu
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // Stat Buttonlarının Bloğu
    
    @IBAction func firstButtonCancel(_ sender: Any) {
        fButtonOutlet.isSelected = false
    }
    
    
    @IBAction func firstButtonAction(_ sender: UIButton) {
        
        
        if sender.isTouchInside == true {
            fButtonOutlet.isSelected = true
        }
        
    }
    
    @IBAction func secondButtonCancel(_ sender: Any) {
        sButtonOutlet.isSelected = false
    }
    @IBAction func secondButtonAction(_ sender: UIButton) {
        
        if sender.isTouchInside == true {
            sButtonOutlet.isSelected = true
        }
        
    }
    
    @IBAction func thirdButtonCancel(_ sender: Any) {
        tButtonOutlet.isSelected = false
    }
    
    @IBAction func thirdButtonAction(_ sender: UIButton) {
        
        if sender.isTouchInside == true {
            tButtonOutlet.isSelected = true
        }
        
    }
    
    @IBAction func fourthButtonCancel(_ sender: Any) {
        frButtonOutlet.isSelected = false
    }
    
    
    @IBAction func fourthButtonAction(_ sender: UIButton) {
        if sender.isTouchInside == true {
            frButtonOutlet.isSelected = true
        }
    }
    
    @IBAction func fifthButtonCancel(_ sender: Any) {
        ffthButtonOutlet.isSelected = false
    }
    
    @IBAction func fifthButtonAction(_ sender: UIButton) {
        
        if sender.isTouchInside == true {
            ffthButtonOutlet.isSelected = true
        }
    }
    // Stat Buttonlarının Bloğu
    
    @IBAction func buttonLeftActionCancel(_ sender: UIButton) {
        leftButtonOutlet.isSelected = false
        rollButtonOutlet.isHidden = true
        whichStorySelectionStatsBankDic = []
    }
    
    @IBAction func buttonLeftAction(_ sender: UIButton) {
        
        if sender.isTouchInside == true && rightButtonOutlet.isSelected != true {
            leftButtonOutlet.isSelected = true
            rollButtonOutlet.isHidden = false
            whichStorySelectionStatsBankDic = storySelectionStatsBankDic
           
        }
        
    }
    @IBAction func buttonRightActionCancel(_ sender: UIButton) {
        rightButtonOutlet.isSelected = false
        rollButtonOutlet.isHidden = true
        whichStorySelectionStatsBankDic = []
    }
    
    @IBAction func buttonRightAction(_ sender: UIButton) {
        
        
        if sender.isTouchInside == true && leftButtonOutlet.isSelected != true {
           rightButtonOutlet.isSelected = true
            rollButtonOutlet.isHidden = false
            whichStorySelectionStatsBankDic = storySelectionStatsBankDic2
            
        }
    }
    
    
    
    @IBAction func nextButton(_ sender: UIButton) {
        //Eğer hepsi tutuyorsa bu button "başarılı" aktif
        //Eğer 3 roll hakkında başarısız olursa  bu button "başarısız" aktif
       
        if controlResult() == false && whichStorySelectionStatsBankDic == storySelectionStatsBankDic {
            pyhsicalTotal -= 10
            physicalDamageCounter.text = String(pyhsicalTotal)
        } else if controlResult() == false && whichStorySelectionStatsBankDic == storySelectionStatsBankDic2 {
            mentalTotal -= 10
            mentalDamageCounter.text = String(mentalTotal)
        }
        storyCounter += 1
//TODO: @Atakan işe yaramıyorsa yukarıdan da buradan da kaldır        leftCounter += 1
//TODO: @Atakan işe yaramıyorsa yukarıdan da buradan da kaldır        rightCounter += 1
        print(pyhsicalTotal)
        print(mentalTotal)
        print(controlResult())
        leftSideOutlet.text = storySelectionLeftBankDic[storyCounter]
        rightSideOutlet.text = storySelectionRightBankDic[storyCounter]
        storyTextOutlet.text = storyBankDic[storyCounter]
        rollButtonOutlet.isUserInteractionEnabled = true
        rollButtonOutlet.isHidden = true
        rollButtonOutlet.setTitle("Roll", for: .normal)
        rollCount = 0
        fButtonOutlet.isSelected = false
        sButtonOutlet.isSelected = false
        tButtonOutlet.isSelected = false
        frButtonOutlet.isSelected = false
        ffthButtonOutlet.isSelected = false
        fButtonOutlet.isHidden = true
        sButtonOutlet.isHidden = true
        tButtonOutlet.isHidden = true
        frButtonOutlet.isHidden = true
        ffthButtonOutlet.isHidden = true
        leftButtonOutlet.isHidden = false
        rightButtonOutlet.isHidden = false
        leftButtonOutlet.isSelected = false
        rightButtonOutlet.isSelected = false
        nextButtonOutlet.setTitle("", for: .normal)
        arrayss = ["z"]
        
    }
    
    
    
    
    
    
    
    // game over ekranı ve kazandın ekranı - tek bir tane ekran üzerinden
    // restart
    
    
    
    @IBAction func backToMain(_ sender: UIButton) {

        self.dismiss(animated: true, completion: nil)
    }
    
    // Zarların atılmasını ve gerekli kontrollerin yapılmasını sağlayan roll butonu bloğu
    
    @IBAction func mainRollButton(_ sender: UIButton) {

        fButtonOutlet.isHidden = false
        sButtonOutlet.isHidden = false
        tButtonOutlet.isHidden = false
        frButtonOutlet.isHidden = false
        ffthButtonOutlet.isHidden = false
        leftButtonOutlet.isHidden = true
        rightButtonOutlet.isHidden = true
        button1()
        button2()
        button3()
        button4()
        button5()
        
        //Kaç defa basıldı
        rollCount += 1
        sender.setTitle(String(3 - rollCount) +  " Hakkın Kaldı", for: .normal)
        if rollCount == 3 {
            sender.setTitle("checkout", for: .normal)
        }
        if rollCount == 4 {
            sender.isUserInteractionEnabled = false
            sender.setTitle("Hakkın Bitti", for: .normal)
        }
        //Kaç defa basıldı
        
        
        //Bütün butonların hangi şartlarda çağırılacağı
       
                 
       
        //else if rollCount == 4 &&  {
            
        //}
        
        
       //Bütün butonların hangi şartlarda çağırılacağı
        
        
        
        
        
        
        //Next Button'un ne zaman açılacağını karar veriyor.
        let controlMeka = controlResult()
        
        //Next Button Control
        let controlNext = controlMeka
        
        if controlNext == true{
            nextButtonOutlet.isHidden = false
            nextButtonOutlet.setTitle("Adamsın!", for: .normal)
            sender.isHidden = true
        }
        else if rollCount == 4 && controlNext == false
        {
            nextButtonOutlet.isHidden = false
            if  whichStorySelectionStatsBankDic == storySelectionStatsBankDic
            {
                nextButtonOutlet.setTitle("Pdamage", for: .normal)
            }
            else if whichStorySelectionStatsBankDic == storySelectionStatsBankDic2 {
                nextButtonOutlet.setTitle("Mdamage", for: .normal)
            }
        }
        else
        {
        nextButtonOutlet.isHidden = true
        }
       //Next Button'un ne zaman açılacağını karar veriyor.
        
        
        
 // counterLogs()
    }
    
    // Zarların atılmasını ve gerekli kontrollerin yapılmasını sağlayan roll butonu bloğu
    
    // Atılan zarların değerleri biz bakabilelim diye yazdığımız kısım
    
//    func counterLogs() {
//
//        var strCounter = 0
//        var wisCounter = 0
//        var dexCounter = 0
//
//        for i in arrayss {
//
//            if i == "str" {
//                strCounter += 1
//            } else if i == "wis" {
//                wisCounter += 1
//            } else if i == "dex" {
//                dexCounter += 1
//            }
//
//        }
//
//
//        print("Str:", strCounter, "Wis:", wisCounter, "Dex:", dexCounter)
//
//    }
    
    // Atılan zarların değerleri biz bakabilelim diye yazdığımız kısım TEKRAR ACARSAN mainRollButton da CAĞIRMAYI UNUTMA!!!
    
    func controlResult () -> Bool  {
        //Buttonlar gelen değerlerin ve istenilen değerlerin sortlama işlemi
        var sortedArray : [String] = []
        //if leftButtonOutlet.isSelected
        if leftButtonOutlet.isSelected {
          sortedArray = storyInt[storyCounter].sorted(by: >)
        } else if rightButtonOutlet.isSelected {
          sortedArray = storyInt2[storyCounter].sorted(by: >)
        }
          
          
         let sortedButtonArray = arrayss.sorted(by: >)
        //Buttonlar gelen değerlerin ve istenilen değerlerin sortlama işlemi

         //Kullanıcının button lardan append ettiği değer ile istediğimiz değeri karşılaştırıyor
         print("sortedArray",sortedArray)
         print("sortedButtonArray", sortedButtonArray)
         print("arrays",arrayss)
             if sortedArray == sortedButtonArray {
                 return true
             } else {
                 return false
             }
        
         //Kullanıcının button lardan append ettiği değer ile istediğimiz değeri karşılaştırıyor
    }
    
    
    // Kullanıcının Attığı Zar Buttonlarının Fonksiyonlar Bloğu
    // && rollCount != 3 kısmında 4 yerine 3 yazma sebebimiz fonksiyonun rollbutton calıstıktan sonra değeri alıyor olması!
    func button1 () {
        diceRoller()
        
        if fButtonOutlet.isSelected == false && rollCount != 3 {
            
            fB = diceRoller()
            fButtonOutlet.setImage(UIImage(named: fB + ".png"), for: .normal)
            fcounter = true
        } else if fButtonOutlet.isSelected == true && fcounter == true  {
            fcounter = false
            
            arrayss.append(fB)
            
            
        }
        else if fButtonOutlet.isSelected == true && fcounter == false {
            fButtonOutlet.setImage(UIImage(named: fB + ".png"), for: .normal)
            
        }
        print(rollCount)
    }
    
    // && rollCount != 3 kısmında 4 yerine 3 yazma sebebimiz fonksiyonun rollbutton calıstıktan sonra değeri alıyor olması!
    func button2 () {
        diceRoller()
        
        if sButtonOutlet.isSelected == false && rollCount != 3 {
            
            sB = diceRoller()
            sButtonOutlet.setImage(UIImage(named: sB + ".png"), for: .normal)
            scounter = true
        } else if sButtonOutlet.isSelected == true && scounter == true {
            scounter = false
            
            arrayss.append(sB)
            
            
        }
        else if sButtonOutlet.isSelected == true && scounter == false {
            sButtonOutlet.setImage(UIImage(named: sB + ".png"), for: .normal)
            
        }
        
    }
  // && rollCount != 3 kısmında 4 yerine 3 yazma sebebimiz fonksiyonun rollbutton calıstıktan sonra değeri alıyor olması!
    func button3 () {
        diceRoller()
        
        if tButtonOutlet.isSelected == false && rollCount != 3 {
            
            tB = diceRoller()
            tButtonOutlet.setImage(UIImage(named: tB + ".png"), for: .normal)
            tcounter = true
        } else if tButtonOutlet.isSelected == true && tcounter == true  {
            tcounter = false
            
            arrayss.append(tB)
            
            
        }
        else if tButtonOutlet.isSelected == true && tcounter == false {
            tButtonOutlet.setImage(UIImage(named: tB + ".png"), for: .normal)
            
        }
        
    }
    // && rollCount != 3 kısmında 4 yerine 3 yazma sebebimiz fonksiyonun rollbutton calıstıktan sonra değeri alıyor olması!
    func button4 () {
        diceRoller()
        
        if frButtonOutlet.isSelected == false && rollCount != 3 {
            
            frB = diceRoller()
            frButtonOutlet.setImage(UIImage(named: frB + ".png"), for: .normal)
            frcounter = true
        } else if frButtonOutlet.isSelected == true && frcounter == true  {
            frcounter = false
            
            arrayss.append(frB)
            
            
        }
        else if frButtonOutlet.isSelected == true && frcounter == false {
            frButtonOutlet.setImage(UIImage(named: frB + ".png"), for: .normal)
            
        }
        
    }
    // && rollCount != 3 kısmında 4 yerine 3 yazma sebebimiz fonksiyonun rollbutton calıstıktan sonra değeri alıyor olması!
    func button5 () {
        diceRoller()
        
        if ffthButtonOutlet.isSelected == false && rollCount != 3 {
            
            ffthB = diceRoller()
            ffthButtonOutlet.setImage(UIImage(named: ffthB + ".png"), for: .normal)
            ffthcounter = true
        } else if ffthButtonOutlet.isSelected == true && ffthcounter == true  {
            ffthcounter = false
            
            arrayss.append(ffthB)
            
            
        }
        else if ffthButtonOutlet.isSelected == true && ffthcounter == false {
            ffthButtonOutlet.setImage(UIImage(named: ffthB + ".png"), for: .normal)
            
        }
        
    }
    // Kullanıcının Attığı Zar Buttonlarının Fonksiyonlar Bloğu
    
    
    
    
    
    
    
    
    
    
    
    
    //func allocatedSkillLog() {
        
        //        print(characterAllocatedStr!)
        //        print(characterAllocatedDex!)
        //        print(characterAllocatedCon!)
        //        print(characterAllocatedWis!)
        //        print(characterAllocatedInt!)
        //        print(characterAllocatedCha!)
        
    //}
    
    // This func makes a dict from char allocated stats
    
    
    // This func makes a dict from char allocated stats and make dice percentages
    
    
    
    
    
    // This func rolls dice for buttons
    func diceRoller () -> String {
        let allocatedStatsDiceDic : [String: Int] =
            ["str": characterAllocatedStr!*5+1,
            "dex": characterAllocatedDex!*5+1,
            "con": characterAllocatedCon!*5+1,
            "wis": characterAllocatedWis!*5+1,
            "int": characterAllocatedInt!*5+1,
            "cha": characterAllocatedCha!*5+1]
        var pipi = [String: Int]()
        var sum = 0
        
        var ata = [0]
        
        var alp : String
        var lastVersion : String
        
        for (key, b) in allocatedStatsDiceDic {
            
            
            var found = false
            for (i, value) in  whichStorySelectionStatsBankDic[storyCounter] {
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
        
        print(whichStorySelectionStatsBankDic[storyCounter])
        
        let percentageRandomNumber = Int.random(in: 1...sum)
        
        
        let sortedPipi = pipi.sorted{ $1.1 > $0.1 }
        
        
        if percentageRandomNumber <= sortedPipi[0].value {
            
            alp = sortedPipi[0].key
        } else if percentageRandomNumber <= sortedPipi[1].value {
            
            alp = sortedPipi[1].key
        } else {
            
            alp = sortedPipi[2].key
        }
        
        lastVersion = alp
        
        print("Last Version:", lastVersion)
        return lastVersion
    }
    
}
