//
//  ViewController.swift
//  FirstRpg
//
//  Created by Umut Sever on 31.01.2020.
//  Copyright © 2020 Umut Sever. All rights reserved.
//

import UIKit

class SkillAllocateViewController: UIViewController {
    
    
    var dex_value_cal = 0, str_value_cal = 0, int_value_cal = 0, cha_value_cal = 0, wis_value_cal = 0, lck_value_cal = 0  //bunun degerini daha sonra hesaplamak icin kullanilacak.
    var dex_max_cal = 0, str_max_cal = 0, int_max_cal = 0, wis_max_cal = 0, cha_max_cal = 0, lck_max_cal = 0
    
    
    let absoluteTotalPoints = 20  // total stat pool
    
    
    
    
    var str_current_value = 0
    var dex_current_value = 0
    var int_current_value = 0
    var cha_current_value = 0
    var wis_current_value = 0
    var con_current_value = 0
    
    
    var total_current = 0
    
    
    var str_maximum_value : Double = 0.0
    var dex_maximum_value : Double = 0.0
    var int_maximum_value : Double = 0.0
    var cha_maximum_value : Double = 0.0
    var wis_maximum_value : Double = 0.0
    var con_maximum_value : Double = 0.0
    
    
    //Continue Button Here
    @IBOutlet weak var continueButtonOutlet: UIButton!
    
    @IBAction func continueButtonPressed(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "goToMain", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToMain" {
            let destinationVC = segue.destination as! MainViewController
                        
             destinationVC.characterAllocatedStr = str_current_value
             destinationVC.characterAllocatedDex = dex_current_value
             destinationVC.characterAllocatedCon = con_current_value
             destinationVC.characterAllocatedWis = wis_current_value
             destinationVC.characterAllocatedInt = int_current_value
             destinationVC.characterAllocatedCha = cha_current_value
            
            
            
        }
    }
  
    
    
    @IBOutlet weak var PointLeft_UILabel: UILabel!
    @IBOutlet weak var STR_UILabel: UILabel!
    @IBOutlet weak var DEX_UILabel: UILabel!
    @IBOutlet weak var INT_UILabel: UILabel!
    @IBOutlet weak var CHA_UILabel: UILabel!
    @IBOutlet weak var WIS_UILabel: UILabel!
    @IBOutlet weak var LCK_UILabel: UILabel!
    
    

    @IBOutlet var valueChangers: [UIStepper]!
    
    
    
   
    
    
    
    func totalPool() -> Bool {
        
        let currentTotalPoints = str_current_value + dex_current_value + int_current_value + cha_current_value + wis_current_value + con_current_value
        total_current = currentTotalPoints
        
        if currentTotalPoints < Int(absoluteTotalPoints) {
            return true
        }
        else {
            return false
        }
        
    }
    
    
    
    func refreshMax() {
        
        
        
        let currentTotalPoints = str_current_value + dex_current_value + int_current_value + cha_current_value + wis_current_value + con_current_value
        
         
        
        
        //Start Of Calculation of Current Total Points Left and Start Of Continue Button
        let currentLeftPoints = absoluteTotalPoints - currentTotalPoints
        
        PointLeft_UILabel.text = String(currentLeftPoints)
        
        if currentLeftPoints == 0 {
            continueButtonOutlet.isHidden = false
        } else {
            continueButtonOutlet.isHidden = true
        }
        
         //End Of Continue Button
        
        if currentTotalPoints <= Int(absoluteTotalPoints - 1) {
            for sender in self.valueChangers{
                sender.isEnabled = true
                
            } } else {
            for sender in self.valueChangers {
                sender.isEnabled = false
            }
        }
        
        if  totalPool() == true {
            for sender in self.valueChangers{
                
                
                sender.maximumValue = sender.maximumValue + 1
                print (sender.maximumValue)
                
                
            }
        }
        else {
            for sender in self.valueChangers {
                sender.isEnabled = true
                sender.maximumValue = sender.value
            }
        }
        
    }
    
 

    
    @IBAction func str_value_changer(_ sender: UIStepper) {
        
        str_current_value = Int(sender.value) //client 's input is stored in str_current_value
        STR_UILabel.text = String(str_current_value) //current value of  the label
        str_maximum_value = sender.maximumValue //label's maximum value could be this
        //toplam havuz daha fazla puan atamama izin vericek mi??
        
        
        logstuff()
        refreshMax()
    }
    
    @IBAction func dex_value_changer(_ sender: UIStepper) {
        
        
        dex_current_value = Int(sender.value) //client 's input is stored in str_current_value
        DEX_UILabel.text = String(dex_current_value) //current value of  the label
        dex_maximum_value = sender.maximumValue //label's maximum value could be this
        //toplam havuz daha fazla puan atamama izin vericek mi??
        
        
        
        refreshMax()
        logstuff()
    }
    
    
    @IBAction func int_value_changer(_ sender: UIStepper) {
        
        
        int_current_value = Int(sender.value) //client 's input is stored in str_current_value
        INT_UILabel.text = String(int_current_value) //current value of  the label
        int_maximum_value = sender.maximumValue //label's maximum value could be this
        //toplam havuz daha fazla puan atamama izin vericek mi??
        
        
        refreshMax()
        logstuff()
    }
    
    @IBAction func cha_value_changer(_ sender: UIStepper) {
        cha_current_value = Int(sender.value) //client 's input is stored in str_current_value
        CHA_UILabel.text = String(cha_current_value) //current value of  the label
        cha_maximum_value = sender.maximumValue //label's maximum value could be this
        //toplam havuz daha fazla puan atamama izin vericek mi??
        
        
        refreshMax()
        logstuff()
        
    }
    
    @IBAction func wis_value_changer(_ sender: UIStepper) {
        wis_current_value = Int(sender.value) //client 's input is stored in str_current_value
        WIS_UILabel.text = String(wis_current_value) //current value of  the label
        wis_maximum_value = sender.maximumValue //label's maximum value could be this
        //toplam havuz daha fazla puan atamama izin vericek mi??
        
        
        refreshMax()
        logstuff()
        
    }
    
    @IBAction func lck_value_changer(_ sender: UIStepper) {
        
        con_current_value = Int(sender.value) //client 's input is stored in str_current_value
        LCK_UILabel.text = String(con_current_value) //current value of  the label
        con_maximum_value = sender.maximumValue //label's maximum value could be this
        //toplam havuz daha fazla puan atamama izin vericek mi??
        
        
        refreshMax()
        logstuff()
    }
    
    
    
    
    
    
    func logstuff () {
        
        print ("Current Points are: ",total_current)
        print("str_current_value: ", str_current_value)
        print("dex_current_value: ", dex_current_value)
        print("int_current_value: ", int_current_value)
        print("cha_current_value: ", cha_current_value)
        print("wis_current_value: ", wis_current_value)
        print("con_current_value: ", con_current_value)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        continueButtonOutlet.isHidden = true
       
    }
    
    
    
    
    
}

