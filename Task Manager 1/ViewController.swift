//
//  ViewController.swift
//  Task Manager 1
//
//  Created by GrepRuby1 on 07/09/16.
//  Copyright © 2016 GrepRuby. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let text1 = testClass()
        text1.test()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
