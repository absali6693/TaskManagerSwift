//
//  AddEditViewController.swift
//  Task Manager 1
//
//  Created by GrepRuby1 on 07/09/16.
//  Copyright © 2016 GrepRuby. All rights reserved.
//

import UIKit

class AddEditViewController: UIViewController {
    
    @IBOutlet weak private var task: UITextField!
    @IBOutlet weak private var descriptionOfTask: UITextField!
    @IBOutlet weak private var timeOfTask: UITextField!
    @IBOutlet weak private var addEditButton : UIButton!
    
    var indexToBeEdited: Int?
    var UserTask: Task?
    var delegate: AddTaskDelegate?
    var edit: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.task.text = UserTask?.getTask()
        self.descriptionOfTask.text = UserTask?.getDescriptionOfTask()
        self.timeOfTask.text = UserTask?.getTimeOfTask()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        if edit == true {
            self.title = "Edit Task"
            addEditButton.setTitle("Edit", forState: UIControlState.Normal)
        }
        else {
            self.title = "Add Task"
            addEditButton.setTitle("Add", forState: UIControlState.Normal)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func addEditTask(sender: AnyObject) {
        if self.task.text == "" || self.descriptionOfTask.text == "" || timeOfTask.text == "" {
            let alert = UIAlertController(title: "Error", message: "Please Fill all the Fields", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
            
        }
        else {
            let task = Task(task: self.task.text!,descriptionOfTask: self.descriptionOfTask.text!, timeOfTask: self.timeOfTask.text!)
            if edit == false {
                delegate?.addTaskToUser(task)
            }
            else {
                edit = false
                delegate?.editTaskOfUser(task , index: indexToBeEdited!)
            }
            self.navigationController?.popViewControllerAnimated(true)
        }
    }
    
    func editTask(task: Task,index: Int)
    {
        edit = true
        indexToBeEdited = index
        UserTask = task
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
