//
// Created by Matthew Reilly on 5/4/17.
// Copyright (c) 2017 WeddingWire. All rights reserved.
//

import Foundation
import Alamofire
@testable import MVP


class MockUserManager: UserManaging {
    
    func getUser() -> User? {
        return nil
    }
    
}