//
//  TaskViewCell.swift
//  Task Manager 1
//
//  Created by GrepRuby1 on 08/09/16.
//  Copyright © 2016 GrepRuby. All rights reserved.
//

import UIKit

class TaskViewCell: UITableViewCell {

    
    @IBOutlet weak private var taskLabel: UILabel!
    @IBOutlet weak private var descriptionOfTaskLabel: UILabel!
    @IBOutlet weak private var timeOfTask: UILabel!
    @IBOutlet weak var deleteButton: UIButton!
    @IBOutlet weak var editButton: UIButton!
    var delegate: AddTaskDelegate?
    
    func setTask(task: String) {
        self.taskLabel.text = task
    }
    
    func setDescriptionOfTask(descriptionOfTask: String) {
        self.descriptionOfTaskLabel.text = descriptionOfTask
    }
    
    func setTime(timeOfTask: String) {
        self.timeOfTask.text = timeOfTask
    }
    
    @IBAction func deleteButtonClick(sender: AnyObject) {
        let deleteButton = sender as! UIButton
        let index = deleteButton.tag
        delegate?.deleteTaskAtIndex(index)
        
    }

}
