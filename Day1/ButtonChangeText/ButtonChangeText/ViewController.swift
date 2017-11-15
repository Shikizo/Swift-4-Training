//
//  ViewController.swift
//  ButtonChangeText
//
//  Created by Cyberjaya 6 iTrain on 13/11/2017.
//  Copyright © 2017 Ken. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var myLabel: UILabel!
  
    @IBOutlet weak var txt_username: UITextField!
    
    @IBOutlet weak var txt_password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeLabelText(_ sender: Any) {
        
        print("Clicking on the button")
        
        print("Username is \(txt_username.text!)")
        
        print("Password is \(txt_password.text!)")
        
        myLabel.text = "Hello " +  txt_username.text!
        
        //Hide all keyboard.
        self.view.endEditing(true)
    
        if self.txt_password.text == "12345" {
            
            //Alert Message Box
            let myAlert = UIAlertController(title: "Successful Login", message: "Welcome \(self.txt_username.text!)", preferredStyle: .alert)
            ///////////////////////////////////////
        
            //Add a button to this Alert Button
            let myAlertButton = UIAlertAction(title: "Okay",
                                              style: .default, handler: nil)
            //Add this button to message box.
            myAlert.addAction(myAlertButton)
            ////////////////////////
        
            //pop this message box to user
            present(myAlert, animated:true, completion: nil)
            
        }else{
            
        //Alert Message Box
            let myAlert = UIAlertController(title: "Failed to Login", message: "Please Try Again", preferredStyle: .alert)
           
            //Add a button to this Alert Button
            let myAlertButton = UIAlertAction(title: "Okay",
                                              style: .default, handler: nil)
            
            //Add this button to message box.
            myAlert.addAction(myAlertButton)
            ////////////////////////
            
            //pop this message box to user
            present(myAlert, animated:true, completion: nil)
        }
        

    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //This will hide the selected keyboard.
        return textField.resignFirstResponder()
    }
    
    @IBAction func multipleAction(_ sender: Any) {
        let myOptions = UIAlertController(title: "test", message: "dsad \(self.txt_username.text!)", preferredStyle: .actionSheet)
        //Add Button
        let myButtonWaze = UIAlertAction(title: "Open With Waze", style: .default,handler: nil)
        
        myOptions.addAction(myButtonWaze)
        
        //Add Button
        let myButtonGoogle = UIAlertAction(title: "Open With GoogleMaps", style: .default,handler: nil)
        
        myOptions.addAction(myButtonGoogle)
        
        //Add Button
        let myButtonCancel = UIAlertAction(title: "Cancel", style: .cancel,handler: nil)
        
        myOptions.addAction(myButtonCancel)
        
        //pop out to user
        present(myOptions, animated: true, completion: nil)
    }
    

    
}

