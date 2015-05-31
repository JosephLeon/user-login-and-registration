//
//  RegisterPageViewController.swift
//  UserLoginAndRegistration
//
//  Created by Joseph Leon on 5/31/15.
//  Copyright (c) 2015 Joseph Leon. All rights reserved.
//

import UIKit

class RegisterPageViewController: UIViewController {

    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func registerTapped(sender: AnyObject) {
        
        let userEmail = userEmailTextField.text
        let userPassword = userPasswordTextField.text
        let repeatPassword = repeatPasswordTextField.text
        
        // Check for empty fields
        if userEmail.isEmpty || userPassword.isEmpty || repeatPassword.isEmpty {
            displayAlertMessage("All fields are required")
            return;
        }
        
        // Check if passwords match
        if userPassword != repeatPassword {
            displayAlertMessage("Passwords do not match")
            return;
        }
        
        // Store Data (WARNING: Temp Local Storage)
        NSUserDefaults.standardUserDefaults().setObject(userEmail, forKey: "userEmail")
        NSUserDefaults.standardUserDefaults().setObject(userPassword, forKey: "userPassword")
        NSUserDefaults.standardUserDefaults().synchronize()
        
        // Display message
        var regAlert = UIAlertController(title: "Alert", message: "Registration Successful!", preferredStyle: UIAlertControllerStyle.Alert)
        
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default) {
            action in self.dismissViewControllerAnimated(true, completion: nil)
        }
        
        regAlert.addAction(okAction)
        self.presentViewController(regAlert, animated: true, completion:nil)
    }
    
    func displayAlertMessage(userMessage:String) {
        
        var alert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.Alert)
        
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil)
        
        alert.addAction(okAction)
        
        self.presentViewController(alert, animated:true, completion: nil)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
