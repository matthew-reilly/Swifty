//
// Created by Matthew Reilly on 5/4/17.
// Copyright (c) 2017 WeddingWire. All rights reserved.
//

import Foundation
@testable import MVP

class MockHomePresenter: HomePresenting {
    
    let navigator:   Navigation!
    let homeManager: HomeManager!
    weak var homeView: HomeView?
    
    var lastCall: String!
    
    init(with manager: HomeManager, navigator: Navigation) {
        self.homeManager = manager
        self.navigator = navigator
    }
    
    func getCards(with: String) {
        lastCall = with
    }
    
    func setView(view: HomeView) {
    
    }
    
    func cardClicked(index: Int) {
    
    }
    
}