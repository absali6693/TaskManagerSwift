//
//  DisplayViewController.swift
//  Task Manager 1
//
//  Created by GrepRuby1 on 07/09/16.
//  Copyright © 2016 GrepRuby. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController, AddTaskDelegate, UITableViewDataSource, UITableViewDelegate {
    var user: User?
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
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
        let cell:TaskViewCell = (tableView.dequeueReusableCellWithIdentifier("Cell1", forIndexPath: indexPath) as? TaskViewCell)!
        cell.setTask((user?.getTasks()[indexPath.row].getTask())!)
        cell.setDescriptionOfTask((user?.getTasks()[indexPath.row].getDescriptionOfTask())!)
        cell.setTime((user?.getTasks()[indexPath.row].getTimeOfTask())!)
        //cell.textLabel?.text = user?.getTasks()[indexPath.row].getTask()
        return cell
    }
    
    func addTaskToUser(task: Task) {
        self.user?.addTasks(task)
        let userdataarray = (UserDataSingletonClass.userDataArray)
        print(userdataarray.count)
        let us = userdataarray.last
        let ustask = us?.getTasks()
        print(ustask?.count)
        //let ust = ustask?.last
        print(ustask)
        tableView.reloadData()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "addEditSegue" {
           let addEditViewController = segue.destinationViewController as! AddEditViewController
            addEditViewController.delegate = self
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
