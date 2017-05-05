//
// Created by Matthew Reilly on 5/4/17.
// Copyright (c) 2017 WeddingWire. All rights reserved.
//

import Foundation
@testable import MVP

class MockAppController: App {
    
    func getHomeManager() -> HomeManager {
        //satisfy needed dependencies
        return MockHomeManager()
    }
    
    func getUserManager() -> UserManagerSpec {
        return MockUserManager()
    }
    
    func getNavigator() -> Nav {
        return MockNavigator(controller: self)
    }
}
