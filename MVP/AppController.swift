//
// Created by Matthew Reilly on 5/5/17.
// Copyright (c) 2017 ___FULLUSERNAME___. All rights reserved.
//

import Foundation

protocol App {
    
    var homeManager: HomeManager { get }
    
    var userManager: UserManaging { get }
    
    var navigator: Navigation { get }
    
}

class AppController: App {
    
    lazy var homeManager: HomeManager = {
        return HomeManagerImpl(with: self.userManager)
    }()
    
    lazy var userManager: UserManaging = {
        return UserManager()
    }()
    
    lazy var navigator: Navigation = {
        return Navigator(controller: self)
    }()
    
}