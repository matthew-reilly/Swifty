//
// Created by Matthew Reilly on 5/5/17.
// Copyright (c) 2017 ___FULLUSERNAME___. All rights reserved.
//

import Foundation



protocol App {
    
    func getHomeManager() -> HomeManager
    
    func getUserManager() -> UserManaging
    
    func getNavigator() -> Navigation
    
}

class AppController: App {
    
    func getHomeManager() -> HomeManager {
        //satisfy needed dependencies
        return HomeManagerImpl(with: getUserManager())
    }
    
    func getUserManager() -> UserManaging {
        return UserManager()
    }
    
    func getNavigator() -> Navigation {
        return Navigator(controller: self)
    }
    
}