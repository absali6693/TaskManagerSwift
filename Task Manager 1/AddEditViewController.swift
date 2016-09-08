//
//  AddEditViewController.swift
//  Task Manager 1
//
//  Created by GrepRuby1 on 07/09/16.
//  Copyright © 2016 GrepRuby. All rights reserved.
//

import UIKit

class AddEditViewController: UIViewController {
    @IBOutlet weak var task: UITextField!
    @IBOutlet weak var descriptionOfTask: UITextField!
    @IBOutlet weak var timeOfTask: UITextField!
    var delegate: AddTaskDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func addEditTask(sender: AnyObject) {
           let task = Task(task: self.task.text!,descriptionOfTask: self.descriptionOfTask.text!, timeOfTask: self.timeOfTask.text!)
        delegate?.addTaskToUser(task)
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    func addTask(tasks: Array<Task>)
    {
        
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
