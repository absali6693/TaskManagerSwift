//
//  Task.swift
//  Task Manager 1
//
//  Created by GrepRuby1 on 07/09/16.
//  Copyright © 2016 GrepRuby. All rights reserved.
//

import UIKit

class Task: NSObject {
    
    private var task: String
    private var descriptionOfTask: String
    private var timeOfTask: String
    
    init(task: String, descriptionOfTask: String, timeOfTask: String) {
        self.task = task
        self.descriptionOfTask = descriptionOfTask
        self.timeOfTask = timeOfTask
    }
    
    func getTask() -> String {
        return self.task
    }

    func getDescriptionOfTask() -> String {
        return self.descriptionOfTask
    }
    
    func getTimeOfTask() -> String {
        return self.timeOfTask
    }
    
}
