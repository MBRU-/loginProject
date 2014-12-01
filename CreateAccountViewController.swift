//
//  CreateAccountViewController.swift
//  loginProject
//
//  Created by Martin Brunner on 27.11.14.
//  Copyright (c) 2014 Martin Brunner. All rights reserved.
//

import UIKit

protocol CreateAccountViewControllerDelegate {
    func accountCreated()
}

class CreateAccountViewController: UIViewController {
    @IBOutlet weak var chooseUserNameTextField: UITextField!
    @IBOutlet weak var choosePasswordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!

    var delegate: CreateAccountViewControllerDelegate?
    
     override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func createAccountButtonPressed(sender: UIButton) {
        
        if choosePasswordTextField.text == confirmPasswordTextField.text && choosePasswordTextField != nil {
            NSUserDefaults.standardUserDefaults().setObject(self.chooseUserNameTextField.text, forKey: kUsernameKey)
            NSUserDefaults.standardUserDefaults().setObject(self.choosePasswordTextField.text, forKey: kPasswordKey)
            NSUserDefaults.standardUserDefaults().synchronize()
        }
        
        self.dismissViewControllerAnimated(true , completion: nil)
        self.delegate?.accountCreated()
    }

    @IBAction func cancelButtonPressed(sender: UIButton) {
        self.dismissViewControllerAnimated(true , completion: nil)
    }

}
