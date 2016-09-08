//
//  AddTaskDelegate.swift
//  Task Manager 1
//
//  Created by GrepRuby1 on 07/09/16.
//  Copyright © 2016 GrepRuby. All rights reserved.
//

import Foundation

protocol  AddTaskDelegate {
    func addTaskToUser(task: Task)
    func deleteTaskAtIndex(index: Int)
}