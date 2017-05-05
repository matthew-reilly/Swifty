//
// Created by Matthew Reilly on 5/4/17.
// Copyright (c) 2017 WeddingWire. All rights reserved.
//

import Foundation
import UIKit


protocol LoginView: class {
    func showError(error: NSError)
}

class LoginViewController: ViewController, LoginView {
    
    let presenter: LoginPresenting!
    
    required init(with presenter: LoginPresenting) {
        self.presenter = presenter
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Not implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func showError(error: NSError) {
    }
    
}

