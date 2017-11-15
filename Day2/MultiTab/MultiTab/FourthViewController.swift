//
//  FourthViewController.swift
//  MultiTab
//
//  Created by Cyberjaya 5 iTrain on 14/11/2017.
//  Copyright © 2017 iswift. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    @IBOutlet weak var myPicker: UIPickerView!
    var characters = ["Juice","Jem","Fruits","Cake"]
    
    var meals = ["Apple", "Dates", "Banana","Grape","PineApple"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//number of columns
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    
    //number of rows
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return characters.count
        }
        else{
               return meals.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0{
            return characters[row]
        }else
        {
            return meals[row]
        }
       
    }
    @IBAction func actionGettResult(_ sender: Any) {
        
        let firstColumnWhichRow = myPicker.selectedRow(inComponent: 0)
        
        let secondColumnWhichRow = myPicker.selectedRow(inComponent: 1)
        
        //compare with the Array to get result
        
        let selectResultFirstColumn = self.characters[firstColumnWhichRow]  //take from characters array
        
        let selectResultSecondColumn = self.meals[secondColumnWhichRow] //take from meals array
        
        let myMessage = "Selected type is \(selectResultFirstColumn) and the meals is \(selectResultSecondColumn)"
        
        let myAlert = UIAlertController(title: "Selected Result", message: myMessage, preferredStyle: .alert)
        
        let okButton = UIAlertAction(title: "Alright Boss!", style: .default, handler: nil)
        
        myAlert.addAction(okButton)
        
        present(myAlert, animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
