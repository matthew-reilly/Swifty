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
    
    let navigator:   Nav!
    let homeManager: HomeManager!
    weak var loginView: LoginView?
    
    
    init(with manager: HomeManager, navigator: Nav) {
        self.homeManager = manager
        self.navigator = navigator
    }
    
    func setView(view: LoginView) {
        self.loginView = view
    }
    
}