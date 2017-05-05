//
// Created by Matthew Reilly on 5/4/17.
// Copyright (c) 2017 WeddingWire. All rights reserved.
//

import Foundation
import Alamofire
@testable import MVP

class MockHomeManager: HomeManager {
    
    var lastCall: String!
    var fakeResponse = Result<[String], NSError>.Success(["Success"])
    
    func fetchCards(for url: String, result: (HomeResult) -> Void) {
        lastCall = url
        result(fakeResponse)
    }
    
    func use(response: [String]) {
        fakeResponse = Result<[String], NSError>.Success(response)
    }
    
    func useError(error: NSError) {
        fakeResponse = Result<[String], NSError>.Failure(error)
    }
    
}