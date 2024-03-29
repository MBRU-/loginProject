//
//  MainViewController.swift
//  loginProject
//
//  Created by Martin Brunner on 27.11.14.
//  Copyright (c) 2014 Martin Brunner. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        usernameLabel.text = (NSUserDefaults.standardUserDefaults().objectForKey(kUsernameKey) as String)
        passwordLabel.text = (NSUserDefaults.standardUserDefaults().objectForKey(kPasswordKey)as String)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
