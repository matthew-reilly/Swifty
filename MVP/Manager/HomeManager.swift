//
// Created by Matthew Reilly on 5/4/17.
// Copyright (c) 2017 WeddingWire. All rights reserved.
//

import Foundation
import WWRequestKit
import Alamofire

protocol HomeManager {
    func fetchCards(for url: String, result: (HomeResult) -> Void)
}

typealias HomeResult = Result<[String], NSError>

class HomeManagerImpl: HomeManager {
    
    let userManager: UserManaging
    
    init(with userManager: UserManaging) {
        self.userManager = userManager
    }
    
    func fetchCards(for url: String, result: (HomeResult) -> Void) {
        let response = Result<[String], NSError>.Success(["Success"])
        
        //make API request, do magic stuff
        result(response)
    }
}