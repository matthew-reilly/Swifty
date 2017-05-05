//
// Created by Matthew Reilly on 5/4/17.
// Copyright (c) 2017 WeddingWire. All rights reserved.
//

import Foundation
import UIKit


protocol LoginView: class {
    func display(cards: [String])
    func showError(error: NSError)
}

class LoginViewController : ViewController, LoginView {
    
    let presenter: LoginPresenting!
    
    required init(with presenter: LoginPresenting) {
        self.presenter = presenter
        super.init()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("Not implemented")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    func display(cards: [String]) {
    }
    
    func showError(error: NSError) {
    }
    
}

