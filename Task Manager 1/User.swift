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
    
    init(name: String , username: String , password: String , email: String) {
        self.name = name
        self.username = username
        self.password = password
        self.email = email
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
    
}
