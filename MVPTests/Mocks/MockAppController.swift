//
// Created by Matthew Reilly on 5/4/17.
// Copyright (c) 2017 WeddingWire. All rights reserved.
//

import Foundation
@testable import MVP

class MockAppController: App {
    
    lazy var homeManager: HomeManager  = MockHomeManager()
    
    lazy var userManager: UserManaging = MockUserManager()
    
    lazy var navigator:   Navigation   = MockNavigator(controller: self)
    
}
