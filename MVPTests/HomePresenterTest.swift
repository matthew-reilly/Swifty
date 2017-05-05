//
// Created by Matthew Reilly on 5/4/17.
// Copyright (c) 2017 WeddingWire. All rights reserved.
//

import Foundation
import Quick
import Nimble
@testable import MVP

class HomePresenterTest: QuickSpec {
    
    var mockController = MockAppController()
    
    override func spec() {
        var homePresenter:   HomePresenting!
        var mockView:        MockHomeViewController!
        var mockHomeManager: MockHomeManager!
        var mockNavigator:   MockNavigator!
        
        describe("Presenter inits") {
            
            beforeEach() {
                mockHomeManager = MockHomeManager()
                mockNavigator = MockNavigator(controller: self.mockController)
                mockView = MockHomeViewController()
                homePresenter = HomePresenter(with: mockHomeManager, navigator: mockNavigator)
                homePresenter.setView(mockView)
            }
            
            context("when presenter inits") {
                
                it("should query API for correct data") {
                    //arrange
                    //build fake query
                    let query = "test"
                    //act
                    homePresenter.getCards(query)
                    //assert
                    //make sure the presenter calls to api with correct request
                    expect(mockHomeManager.lastCall).to(equal(query))
                }
    
                it("should provide view with correct data") {
                    //arrange
                    //build fake query
                    //make manager respond with fake data
                    let query    = "test"
                    let response = ["Fake", "Data"]
                    mockHomeManager.use(response)
                    //act
                    //ask presenter to fetch data
                    homePresenter.getCards(query)
                    //assert
                    //make sure the presenter gave the view correct data
                    expect(mockView.lastDisplayed).to(equal(response))
                }
            }
            
            context("when error occurs") {
                
                it("should display correct error") {
                    //arrange
                    //build fake query
                    //make manager respond with fake data
                    let error    = NSError(domain: "500", code: 500, userInfo: nil)
                    let response = ["Fake", "Data"]
                    mockHomeManager.useError(error)
                    //act
                    //ask presenter to fetch data
                    homePresenter.getCards("test")
                    //assert
                    //make sure the presenter gave the view correct data
                    expect(mockView.lastError).to(equal(error))
                }
            }
    
            context("when card is clicked") {
        
                it("should display correct VC") {
                    //arrange
                    //build fake query
                    let index = 5
                    //act
                    //ask presenter to present card
                    homePresenter.cardClicked(index)
                    //assert
                    //make sure the navigator went to the right place
                    
                    //expect(mockNavigator.verify(Page.Detail(index: index)))
                }
            }
        }
    }
}