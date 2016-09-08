//
//  SignUpViewController.swift
//  Task Manager 1
//
//  Created by GrepRuby1 on 07/09/16.
//  Copyright © 2016 GrepRuby. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
   
    @IBOutlet weak private var emailTextField: UITextField!
    @IBOutlet weak private var passwordTextField: UITextField!
    @IBOutlet weak private var usernameTextField: UITextField!
    @IBOutlet weak private var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Sign Up" 
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - IOAction
    
    @IBAction func signInButtonClickAction(sender: AnyObject) {
        let user = User(name: nameTextField.text!,username: usernameTextField.text!,password: passwordTextField.text!,email: emailTextField.text!)
        let userDataSingletonclass = UserDataSingletonClass()
        userDataSingletonclass.addUser(user)
        let storyboard: UIStoryboard = UIStoryboard(name: "viewsStoryBoard", bundle: nil)
        let displayViewController = storyboard.instantiateViewControllerWithIdentifier("DisplayViewController") as! DisplayViewController
        displayViewController.getUser(user)
        self.navigationController?.viewControllers[0] = displayViewController
        self.navigationController?.viewControllers.removeAtIndex(1)
        //To change
//        self.navigationController?.popViewControllerAnimated(true)
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
