//
// Created by Matthew Reilly on 5/4/17.
// Copyright (c) 2017 WeddingWire. All rights reserved.
//

import Foundation
import UIKit

protocol LoginPresenting {
    func setView(view: LoginView)
}

class LoginPresenter: LoginPresenting {
    
    weak var loginView: LoginView?
    
    let navigator:   Navigation!
    let homeManager: HomeManager!
    
    init(with manager: HomeManager, navigator: Navigation) {
        self.homeManager = manager
        self.navigator = navigator
    }
    
    func setView(view: LoginView) {
        self.loginView = view
    }
    
}