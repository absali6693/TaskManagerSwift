//
//  SignUpViewController.swift
//  Task Manager 1
//
//  Created by GrepRuby1 on 07/09/16.
//  Copyright © 2016 GrepRuby. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
   
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordtextField: UITextField!
    @IBOutlet weak var usernametextField: UITextField!
    @IBOutlet weak var nameTextField: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - IOAction
    
    @IBAction func signInButtonClickAction(sender: AnyObject) {
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
