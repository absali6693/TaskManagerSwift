//
//  UserDataSingletonClass.swift
//  Task Manager 1
//
//  Created by GrepRuby1 on 07/09/16.
//  Copyright © 2016 GrepRuby. All rights reserved.
//

import UIKit

class UserDataSingletonClass: NSObject {
    
        static var userDataArray = Array<User>()
    
    func addUser(user: User) {
        UserDataSingletonClass.userDataArray.append(user)
    }
}
