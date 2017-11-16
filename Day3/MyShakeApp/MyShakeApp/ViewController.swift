//
//  ViewController.swift
//  MyShakeApp
//
//  Created by Cyberjaya 6 iTrain on 15/11/2017.
//  Copyright © 2017 Ken. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func motionBegan(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            
            print("Shake start detected")
            
            self.myLabel.text = "Begining shake detection"
        }
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            
            print("Motion end detected")
            
            self.myLabel.text = "End of the shake"
            
            //Random Number in Range
            let lower: UInt32 = 1000
            let upper: UInt32 = 9999
            
            let randomNumber = arc4random_uniform(upper - lower) + 10
            self.myLabel.text = String(randomNumber)
            
        }
    }
    

    
    override func motionCancelled(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
    
            print("Motion Cancelled of the shake")
            
            self.myLabel.text = "Cancelled the shake"
        }
    }
    
}

