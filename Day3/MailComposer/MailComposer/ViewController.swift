//
//  ViewController.swift
//  MailComposer
//
//  Created by Cyberjaya 6 iTrain on 15/11/2017.
//  Copyright © 2017 Ken. All rights reserved.
//

import UIKit
import MessageUI
class ViewController: UIViewController, MFMailComposeViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func composeEmail(_ sender: Any) {
     
        if MFMailComposeViewController.canSendMail() {
            
        let mail = MFMailComposeViewController()
        mail.mailComposeDelegate = self
        
        mail.setToRecipients(["kenx891@gmail.com", "shikizo@live.com.my"])
        mail.setSubject("Ios class Feedback")
        mail.setMessageBody("<p>The Ios Class is Nice</p>", isHTML: true)
        
        present(mail, animated: true, completion: nil)
        
    }else{
    
       print("Cant Sent")
    }
        
        
            }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

