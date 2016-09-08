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
        if (nameTextField.text == "" || usernameTextField.text == "" || passwordTextField.text == "" || emailTextField.text == "" ){
            let alert = UIAlertController(title: GlobalConstants.errorTitle, message: GlobalConstants.errorMessageEmpltFields, preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }
        else {
            let predicate = NSPredicate(format: "getUsername = %@", usernameTextField.text!)
            let filteredArray = (UserDataSingletonClass.userDataArray).filter { predicate.evaluateWithObject($0) }
            if filteredArray.count == 1 {
                let alert = UIAlertController(title: GlobalConstants.errorTitle, message: GlobalConstants.errorMessageUserExist, preferredStyle: UIAlertControllerStyle.Alert)
                alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
                self.presentViewController(alert, animated: true, completion: nil)
            }
            else {
                let user = User(name: nameTextField.text!,username: usernameTextField.text!,password: passwordTextField.text!,email: emailTextField.text!)
                let userDataSingletonclass = UserDataSingletonClass()
                userDataSingletonclass.addUser(user)
                let storyboard: UIStoryboard = UIStoryboard(name: GlobalConstants.viewStoryBoard, bundle: nil)
                let displayViewController = storyboard.instantiateViewControllerWithIdentifier(GlobalConstants.displayViewController) as! DisplayViewController
                displayViewController.getUser(user)
                self.navigationController?.viewControllers[0] = displayViewController
                self.navigationController?.viewControllers.removeAtIndex(1)
            }
        }
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
