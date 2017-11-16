//
//  MainViewController.swift
//  login
//
//  Created by Cyberjaya 6 iTrain on 16/11/2017.
//  Copyright © 2017 Ken. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    
        override func viewDidLoad() {
            super.viewDidLoad()
            
            //Hide Navigation Bar
            self.navigationController?.navigationBar.isHidden = true
            
            let myDefault = UserDefaults.standard
            
            self.myLabel.text = myDefault.string(forKey: "username")
            
           self.myLabel.text = "Welcome \(myDefault.string(forKey: "username")!)"
            
        // Do any additional setup after loading the view.
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
        }
        
        @IBAction func action_logout(_ sender: Any) {
            
            let myDefaults = UserDefaults.standard
            
            myDefaults.removeObject(forKey: "username")
            myDefaults.removeObject(forKey: "Successful Login")
            
            //let myDomain = Bundle.main.bundleIdentifier!
            
            
            myDefaults.synchronize()
            
            //Back to previous page.
            self.navigationController?.popViewController(animated: true)
            
            //self.navigationController?.popViewController(animated: true)
            
        }

    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


