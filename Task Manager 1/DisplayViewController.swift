//
//  DisplayViewController.swift
//  Task Manager 1
//
//  Created by GrepRuby1 on 07/09/16.
//  Copyright © 2016 GrepRuby. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController, AddTaskDelegate, UITableViewDataSource, UITableViewDelegate {
    
    private var user: User?
    @IBOutlet weak private var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        self.title = "Task Manager"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getUser(user: User) {
        self.user = user
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (user?.getTasks().count)!
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:TaskViewCell = (tableView.dequeueReusableCellWithIdentifier("TaskCell", forIndexPath: indexPath) as? TaskViewCell)!
        cell.setTask((user?.getTasks()[indexPath.row].getTask())!)
        cell.setDescriptionOfTask((user?.getTasks()[indexPath.row].getDescriptionOfTask())!)
        cell.setTime((user?.getTasks()[indexPath.row].getTimeOfTask())!)
        cell.deleteButton.tag = indexPath.row
        cell.editButton.tag = indexPath.row
        cell.delegate = self
        //cell.textLabel?.text = user?.getTasks()[indexPath.row].getTask()
        return cell
    }
    
    func addTaskToUser(task: Task) {
        self.user?.addTasks(task)
        tableView.reloadData()
    }
    
    func deleteTaskAtIndex(index: Int) {
        user?.deleteTaskAtIndex(index)
        tableView.reloadData()
    }
    
    func editTaskOfUser(task: Task , index: Int) {
        user?.editTaskAtIndex(task, index: index)
        tableView.reloadData()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == GlobalConstants.addSegue {
           let addEditViewController = segue.destinationViewController as! AddEditViewController
            addEditViewController.delegate = self
        }
        
        if segue.identifier == GlobalConstants.editSegue {
            let addEditViewController = segue.destinationViewController as! AddEditViewController
            addEditViewController.delegate = self
            let editButton:UIButton = sender as! UIButton
            let index:Int = editButton.tag
            addEditViewController.editTask((user?.getTasks()[index])!,index: index)
        }
    }
    
    @IBAction func logoutButtonClicked(sender: AnyObject) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let signInViewController = storyboard.instantiateViewControllerWithIdentifier(GlobalConstants.signInViewController) as! SignInViewController
        self.navigationController?.viewControllers.append(signInViewController)
        self.navigationController?.viewControllers.removeAtIndex(0)
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
