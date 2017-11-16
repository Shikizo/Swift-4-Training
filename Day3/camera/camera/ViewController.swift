//
//  ViewController.swift
//  camera
//
//  Created by Cyberjaya 6 iTrain on 15/11/2017.
//  Copyright © 2017 Ken. All rights reserved.
//

import UIKit
import Social

class ViewController: UIViewController , UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var myImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
 
    @IBAction func action_Camera(_ sender: Any) {
        
        if UIImagePickerController.isSourceTypeAvailable(.camera){
        
        let myPicker = UIImagePickerController()
        myPicker.allowsEditing = false
        myPicker.delegate = self
        myPicker.sourceType = .camera
        
        present(myPicker, animated:true, completion: nil)
        
        }else{
        
      let myAlert = UIAlertController(title:"Camera", message: "Not Supported", preferredStyle: .alert)
      
            let okButton = UIAlertAction(title: "Okay", style: .default, handler: nil)
    
            
        myAlert.addAction(okButton)
            
        present(myAlert, animated:true, completion: nil)
        
        
        }
        }
    
        @IBAction func action_photoLibrary(_ sender: Any) {
        
        let myPicker = UIImagePickerController()
        myPicker.allowsEditing = false
        myPicker.delegate = self
        myPicker.sourceType = .photoLibrary
        
        present(myPicker, animated:true, completion: nil)
            
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage
        
        self.myImage.image = selectedImage
  
    //Close the Panel
    dismiss(animated: true, completion: nil)
    
    }
    
    
   // @IBAction func shareToFacebook(_ sender: Any) {
        
     //   let facebookSheet:SLComposeViewController =
       //     SLComposeViewController(forServiceType: SLServiceTypeFacebook)
        
        //facebookSheet.setInitialText("Hello World")
        
        //present(facebooksheet, animated: )
   // }
    
    override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
    }


}

