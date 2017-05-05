//
// Created by Matthew Reilly on 5/4/17.
// Copyright (c) 2017 WeddingWire. All rights reserved.
//

import Foundation
import UIKit

protocol HomePresenting {
    func setView(view: HomeView)
    
    func getCards(with: String)
    
    func cardClicked(index: Int)
}

class HomePresenter: HomePresenting {
    
    let navigator:   Nav!
    let homeManager: HomeManager!
    weak var homeView: HomeView?
    
    
    init(with manager: HomeManager, navigator: Nav) {
        self.homeManager = manager
        self.navigator = navigator
    }
    
    func setView(view: HomeView) {
        self.homeView = view
    }
    
    func getCards(with: String) {
        homeManager.fetchCards(for: with, result: cardFetchCompletion)
    }
    
    lazy var cardFetchCompletion: (HomeResult) -> Void = { [weak self] response in
        
        guard let `self` = self else { return }
        
        switch response {
        case let .Success(list):
            self.homeView?.display(list)
        
        case let .Failure(error):
            self.homeView?.showError(error)
            
        }
    }
    
    func cardClicked(index: Int) {
        navigator.open(.Detail(index: index), from: homeView) //need better way
    }
    
}