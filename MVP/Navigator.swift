//
// Created by Matthew Reilly on 5/4/17.
// Copyright (c) 2017 WeddingWire. All rights reserved.
//

import Foundation
import UIKit

protocol Navigation {
    func open(page: Scene, from viewController: AnyObject?)
}

class Navigator: Navigation {
    
    let controller: App
    
    init(controller: App) {
        self.controller = controller
    }
    
    func open(page: Scene, from viewController: AnyObject?) {
        guard let vc = viewController as? UIViewController else { return }
        
        if page.authRequired() {
            //not authed, go to login page
            Scene.Login.open(from: vc, controller: controller)
            return
        }
        
        page.open(from: vc, controller: controller)
    }
    
}


