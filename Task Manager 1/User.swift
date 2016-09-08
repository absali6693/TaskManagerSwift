//
//  User.swift
//  Task Manager 1
//
//  Created by GrepRuby1 on 07/09/16.
//  Copyright © 2016 GrepRuby. All rights reserved.
//

import UIKit

class User: NSObject {
    private var name: String;
    private var username: String;
    private var password: String;
    private var email: String;
    private var tasks: Array<Task>
    
    init(name: String , username: String , password: String , email: String ) {
        self.name = name
        self.username = username
        self.password = password
        self.email = email
        self.tasks = []
    }
    
    func getUser() -> User {
        return self
    }
    
    func getName() -> String {
        return self.name
    }
    
    func getUsername() -> String {
        return self.username
    }
    
    func getPassword() -> String {
        return self.password
    }
    
    func getEmail() -> String {
        return self.email
    }
    
    func getTasks() -> Array<Task> {
        return self.tasks
    }
    
    func addTasks(task: Task) {
        self.tasks.append(task)
    }
    
    func deleteTaskAtIndex(index: Int) {
        self.tasks.removeAtIndex(index)
    }
    
    func editTaskAtIndex(task: Task , index: Int) {
        self.tasks[index] = task
    }
    
}
