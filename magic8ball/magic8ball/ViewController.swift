//
//  ViewController.swift
//  magic8ball
//
//  Created by ken ho on 14/10/2018.
//  Copyright © 2018 ken ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let answerArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]

    @IBOutlet weak var imageView1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func askButtonPressed(_ sender: Any) {
        updateAnswerImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype,
                     with event: UIEvent?){
        updateAnswerImage()
    }
    
    func updateAnswerImage() {
        let randomImageIndex = Int.random(in: 0...4)
        imageView1.image = UIImage(named: answerArray[randomImageIndex])
    }
}

