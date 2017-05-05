//
// Created by Matthew Reilly on 5/4/17.
// Copyright (c) 2017 WeddingWire. All rights reserved.
//

import Foundation
@testable import MVP

class MockHomeViewController: HomeView {
    
    var lastDisplayed: [String]!
    var lastError:     NSError!
    
    func display(cards: [String]) {
        lastDisplayed = cards
    }
    
    func showError(error: NSError) {
        lastError = error
    }
    
}