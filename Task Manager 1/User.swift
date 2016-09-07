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
    
    func  getName() {
        print(self.name)
    }

}
