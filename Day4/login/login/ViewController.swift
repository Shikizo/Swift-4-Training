//
//  ViewController.swift
//  login
//
//  Created by Cyberjaya 6 iTrain on 16/11/2017.
//  Copyright © 2017 Ken. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt_username: UITextField!
    
    override func viewDidLoad() {
    
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let myDefaults = UserDefaults.standard
        
        if myDefaults.bool(forKey: "Successful Login"){
            //Redirect Page
            if let nextView = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainViewController") as? MainViewController {
                
                navigationController?.pushViewController(nextView, animated: true)
            }        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    @IBAction func action_submit(_ sender: Any) {
        if self.txt_username.text == "Kens" {
        //Save Login.
         let myDefaults = UserDefaults.standard
            
            myDefaults.set(true, forKey: "Successful Login")
            myDefaults.set(self.txt_username.text, forKey: "username")
                
            myDefaults.synchronize()// This will commit the save.
            
       //Redirect Page
            if let nextView = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainViewController") as? MainViewController {
        
                navigationController?.pushViewController(nextView, animated: true)
                }
        }else{
            // Wrong Authentication
            let myAlert = UIAlertController(title: "Login Failed", message: "Please submit a valid login", preferredStyle: .alert)
         
            let okButton = UIAlertAction(title: "Okay", style: .default, handler: nil)
            
            myAlert.addAction(okButton)
            
            present(myAlert, animated: true, completion: nil)
}
}

}
