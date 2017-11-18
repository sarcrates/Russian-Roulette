//
//  ViewController.swift
//  Russian Roulette
//
//  Created by Hana on 9/18/15.
//  Copyright © 2015 sarcrates. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var RussianRouletteLabel: UILabel!
    @IBOutlet weak var ClickTriggerLabel: UILabel!
    @IBOutlet weak var TriggerButton: UIButton!
    @IBOutlet weak var DeclineButton: UIButton!
    
    //label for when clicking trigger
    var result = ["click", "click", "click", "click", "click", "bang!!"]
    var chooseResult = 0
    
    //when clicking decline
    
    var declining = ["coward", "scardy cat", "go home to mommy"]
    var chooseDeclining = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    @IBAction func TriggerAction(_ sender: UIButton) {
        showingResult()
        FinalResult()
        
    }
    
    @IBAction func DeclineAction(_ sender: UIButton) {
        Declining()
    }
    
    func showingResult(){
      ClickTriggerLabel.text = "\(result[chooseResult])"
    FinalResult()
        
    }

    func FinalResult(){
        chooseResult = Int(arc4random_uniform(6))
    }

    func Declining(){
        ClickTriggerLabel.text = "\(declining[chooseDeclining])"
        chooseDeclining = Int(arc4random_uniform(3))
        
        
        
    }
}

