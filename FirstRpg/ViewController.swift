//
//  ViewController.swift
//  FirstRpg
//
//  Created by Umut Sever on 31.01.2020.
//  Copyright © 2020 Umut Sever. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    var dex_value_cal = 0, str_value_cal = 0, int_value_cal = 0 //bunun degerini daha sonra hesaplamak icin kullanilacak.
    var dex_max_cal = 0, str_max_cal = 0, int_max_cal = 0
    
    
    let absoluteTotalPoints = 10.0  // total stat pool
    lazy var currentPoints = absoluteTotalPoints
    
    
    var str_current_value : Double = 0.0
    var dex_current_value : Double = 0.0
    var int_current_value : Double = 0.0
    var total_current : Double = 0.0
    
    var str_maximum_value : Double = 0.0
    var dex_maximum_value : Double = 0.0
    var int_maximum_value : Double = 0.0

    
    var counterTotal = 0
    
    
    @IBOutlet weak var STR_UILabel: UILabel!
    @IBOutlet weak var DEX_UILabel: UILabel!
    @IBOutlet weak var INT_UILabel: UILabel!
    @IBOutlet var valueChangers: [UIStepper]!
    
    

    func totalPool() -> Bool {

        let currentTotalPoints = str_current_value + dex_current_value + int_current_value
        total_current = currentTotalPoints
        
        if currentTotalPoints < absoluteTotalPoints {
            return true
        }
        else {
            return false
        }
    
    }
    
    func updateNotify() {
        
        counterTotal = counterTotal + Int(str_current_value + dex_current_value + int_current_value)
        
    }
    
    func refreshMax() {
        
        
       
        
        let currentTotalPoints = str_current_value + dex_current_value + int_current_value
        
        if currentTotalPoints <= 9 {
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
    
    func logstuff () {
        
        print ("Current Points are: ",total_current)
        print("str_current_value: ", str_current_value)
        print("dex_current_value: ", dex_current_value)
        print("int_current_value: ", int_current_value)
        
        
    }

  
    @IBAction func str_value_changer(_ sender: UIStepper) {
        
        str_current_value = sender.value //client 's input is stored in str_current_value
        STR_UILabel.text = String(sender.value) //current value of  the label
        str_maximum_value = sender.maximumValue //label's maximum value could be this
         //toplam havuz daha fazla puan atamama izin vericek mi??
        

        logstuff()
        refreshMax()
    }

  @IBAction func dex_value_changer(_ sender: UIStepper) {
        
    
        dex_current_value = sender.value //client 's input is stored in str_current_value
        DEX_UILabel.text = String(sender.value) //current value of  the label
        dex_maximum_value = sender.maximumValue //label's maximum value could be this
         //toplam havuz daha fazla puan atamama izin vericek mi??
    
        

        refreshMax()
        logstuff()
    }
 
    
    @IBAction func int_value_changer(_ sender: UIStepper) {
        
        
        int_current_value = sender.value //client 's input is stored in str_current_value
        INT_UILabel.text = String(sender.value) //current value of  the label
        int_maximum_value = sender.maximumValue //label's maximum value could be this
         //toplam havuz daha fazla puan atamama izin vericek mi??
        
        
        refreshMax()
        logstuff()
    }
    

    


    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        

    }
   
 
    

    
}

