//
//  ViewController.swift
//  SwitchAndSlider
//
//  Created by Cyberjaya 6 iTrain on 13/11/2017.
//  Copyright © 2017 Ken. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var mySliderValue: UILabel!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sliderMoved(_ sender: Any) {
        self.mySliderValue.text = String (format: "%1f",
        self.mySlider.value)
    }
}



