//
//  LoginViewController.swift
//  loginProject
//
//  Created by Martin Brunner on 27.11.14.
//  Copyright (c) 2014 Martin Brunner. All rights reserved.
//

import UIKit
import MobileCoreServices
import CoreData

class LoginViewController: UIViewController, CreateAccountViewControllerDelegate {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var textView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "loginToCreateAccountSegue" {
            var createAccountVC = segue.destinationViewController as CreateAccountViewController
            createAccountVC.delegate = self
        }
    }

    @IBAction func loginButtonPressed(sender: UIButton) {
 
        let userNameSavedFrumNSUserdefaults = NSUserDefaults.standardUserDefaults().objectForKey(kUsernameKey) as String
        let passwordSavedFromNSUserDefaults = NSUserDefaults.standardUserDefaults().objectForKey(kPasswordKey) as String
        println("User \(userNameSavedFrumNSUserdefaults); Password \(passwordSavedFromNSUserDefaults)")
        
        if usernameTextField.text == userNameSavedFrumNSUserdefaults && passwordTextField.text == passwordSavedFromNSUserDefaults {
                self.performSegueWithIdentifier("loginToMainSegue", sender: self)
        }
    }

    
    @IBAction func createAccountButtonPressed(sender: UIButton) {
        self.performSegueWithIdentifier("loginToCreateAccountSegue", sender: self)
    }

    //CreateAccountViewControllerDelegate
     func accountCreated() {
        self.performSegueWithIdentifier("loginToMainSegue", sender: self)
    }
    
        
}
