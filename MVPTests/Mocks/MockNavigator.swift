//
// Created by Matthew Reilly on 5/4/17.
// Copyright (c) 2017 WeddingWire. All rights reserved.
//

import Foundation
import UIKit
@testable import MVP

class MockNavigator: Navigation {
    
    var lastPage: Scene!
    
    let controller: App
    
    init(controller: App) {
        self.controller = controller
    }
    
    func open(page: Scene, from viewController: AnyObject?) {
        lastPage = page
    }
    
    //helper func to reduce repeated calls in tests
    func verify(page: Scene) {
        //TODO
    }
    
}
