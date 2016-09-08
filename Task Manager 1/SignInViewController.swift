//
//  ViewController.swift
//  Task Manager 1
//
//  Created by GrepRuby1 on 07/09/16.
//  Copyright © 2016 GrepRuby. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet weak private var usernameTextField: UITextField!
    @IBOutlet weak private var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - IBActions
    
    @IBAction func signInButtonClickAction(sender: AnyObject) {
        if usernameTextField.text == "" || passwordTextField.text == "" {
            let alert = UIAlertController(title: GlobalConstants.errorTitle, message: GlobalConstants.errorMessageEmpltFields, preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)

        }
        else {
            let predicate = NSPredicate(format: "getUsername = %@ AND getPassword = %@", usernameTextField.text!, passwordTextField.text!)
            let filteredArray = (UserDataSingletonClass.userDataArray).filter { predicate.evaluateWithObject($0) }
            if filteredArray.count == 1 {
                let user =  filteredArray.last
                let storyboard: UIStoryboard = UIStoryboard(name: GlobalConstants.viewStoryBoard, bundle: nil)
                let displayViewController = storyboard.instantiateViewControllerWithIdentifier(GlobalConstants.displayViewController) as! DisplayViewController
                displayViewController.getUser(user!)
                self.navigationController?.viewControllers.append(displayViewController)
                self.navigationController?.viewControllers.removeAtIndex(0)
            }
            //self.showViewController(displayViewController, sender: self)
        }
    }
    
    /*override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     if segue.identifier == "signUpSegue" {
     /*if let destination = segue.destinationViewController as? SignUpViewController {
     //destination. = sender
     }
     //let destinationVC = segue.destinationViewController
     */
     }
     }*/
}
