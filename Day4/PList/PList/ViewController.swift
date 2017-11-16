//
//  ViewController.swift
//  PList
//
//  Created by Cyberjaya 6 iTrain on 16/11/2017.
//  Copyright © 2017 Ken. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl_name: UILabel!
    @IBOutlet weak var lbl_contact: UILabel!
    @IBOutlet weak var lbl_company: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     //   loadPlist()
     //     loadstudentPlist()
      loadPlistOnline()
    
}
    
    func loadPlistOnline(){
        //Point to the file
        let fileUrlPath = "http://sevengorilla.com/training/myList.plist"
        //convert the path to URL type
        let fileURL = URL(string: fileUrlPath)
        
        //Grab Content.
        if let dictResult = NSDictionary(contentsOf: fileURL!){
        }
        
    
    //Create a method/function
    func loadPlist(){
        //Point to the file
        let myPlistPath = Bundle.main.path(forResource: "myList", ofType: "plist")
        
        if let dictResult = NSDictionary(contentsOfFile:myPlistPath!) {
            /*Loop all the result.
             for (key, value) in dictResult {
             print("Keyfield is \(key) and Value is \(value)")
             } */
            self.lbl_name.text = dictResult["name"] as? String
            self.lbl_company.text = dictResult["company"] as? String
            self.lbl_contact.text = dictResult["phoneNo"] as? String
          }
        }
      }
    
    func loadstudentPlist(){
        //Point to the file
        let myPlistPath = Bundle.main.path(forResource: "Student", ofType: "plist")
        
        if let arrayResult = NSArray(contentsOfFile:myPlistPath!) {
            /*Loop all the result.
             for (key, value) in dictResult {
             print("Keyfield is \(key) and Value is \(value)")
             } */
            //[[String:String]] means by Array contain of Dictionary.
            // ! is to unwarp Optional Value
            //Optional is wrap to protect Nil value crash.
            
            for student in arrayResult as! [[String:String]]{
                
                let student_name = student["Name"]
                print("Student Name is \(student_name!)")
            }
        }
    }

       override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


