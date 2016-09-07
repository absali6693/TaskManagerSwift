//
//  testClass.swift
//  Task Manager 1
//
//  Created by GrepRuby1 on 07/09/16.
//  Copyright © 2016 GrepRuby. All rights reserved.
//

import UIKit

class testClass: NSObject {
    func test(){
        let user = User(name: "Abbas",username: "abs",password: "ali",email: "gg")
        let user1 = user.getUser()
        user1.getName()
        UserDataSingletonClass.userDataArray.append(user)
        print(UserDataSingletonClass.userDataArray.count)
        let user2 = UserDataSingletonClass.userDataArray.popLast()
        user2?.getName()
    }
}
