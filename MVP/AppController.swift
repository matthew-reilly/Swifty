//
// Created by Matthew Reilly on 5/5/17.
// Copyright (c) 2017 ___FULLUSERNAME___. All rights reserved.
//

import Foundation



protocol App {
    
    func getHomeManager() -> HomeManager
    
    func getUserManager() -> UserManagerSpec
    
    func getNavigator() -> Nav
    
}

class NewAppController: App {
    
    func getHomeManager() -> HomeManager {
        //satisfy needed dependencies
        return HomeManagerImpl(with: getUserManager())
    }
    
    func getUserManager() -> UserManagerSpec {
        return UserManager()
    }
    
    func getNavigator() -> Nav {
        return Navigator(controller: self)
    }
    
}