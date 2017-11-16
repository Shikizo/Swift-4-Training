//
//  StudentsTableViewController.swift
//  PList
//
//  Created by Cyberjaya 6 iTrain on 16/11/2017.
//  Copyright © 2017 Ken. All rights reserved.
//

import UIKit

class StudentsTableViewController: UITableViewController {
   
    //Class Variable - Able to use across methods
    var myArray: [[String:String]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadstudentPlist()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    func loadstudentPlist(){
        //Point to the file
        let myPlistPath = Bundle.main.path(forResource: "Student", ofType: "plist")
        
        //Grab Content
        
        if let arrayResult = NSArray(contentsOfFile:myPlistPath!) {
            
        self.myArray = arrayResult as! [[String:String]]
            
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
      }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.myArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        //Add As! customTableViewCell
        //Now use custom
        cell.lbl_name?.text = self.myArray[indexPath.row]["Name"]
        cell.lbl_company?.text = self.myArray[indexPath.row]["Company"]
        cell.lbl_contact?.text = self.myArray[indexPath.row]["Contact"]

        return cell
    }
    
    //svengorilla.com/training/myList.plist

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
