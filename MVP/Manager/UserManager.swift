//
// Created by Matthew Reilly on 5/5/17.
// Copyright (c) 2017 ___FULLUSERNAME___. All rights reserved.
//

import Foundation

protocol UserManaging {
    func getUser() -> User?
}

class UserManager: UserManaging {
    func getUser() -> User? {
        return nil
    }
}

struct User {


}