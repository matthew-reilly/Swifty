//
// Created by Matthew Reilly on 5/4/17.
// Copyright (c) 2017 WeddingWire. All rights reserved.
//

import Foundation
import Quick
import Nimble
@testable import MVP

class HomeViewControllerTest: QuickSpec {
    
    var mockController = MockAppController()
    
    override func spec() {
        var homeViewController: HomeViewController!
        var mockHomePresenter: MockHomePresenter!
        var mockNavigator: MockNavigator!
        var query = "testQuery"
        
        describe("init") {
            
            beforeEach() {
                mockNavigator = MockNavigator(controller: self.mockController)
                mockHomePresenter = MockHomePresenter(with: MockHomeManager(), navigator: mockNavigator)
                homeViewController = HomeViewController(with: mockHomePresenter)
            }
            
            context("ready") {
                it("should make correct request") {
                    //arrange
                    //set data
                    homeViewController.query = query
                    //act
                    //start VC
                    homeViewController.viewDidLoad()
                    //assert
                    //VC should ask presenter for correct data
                    expect(mockHomePresenter.lastCall).to(equal(query))
                }
            }
        }
    
        describe("data presentation") {
        
            beforeEach() {
                mockHomePresenter = MockHomePresenter(with: MockHomeManager(), navigator: mockNavigator)
                homeViewController = HomeViewController(with: mockHomePresenter)
            }
        
            context("valid data") {
                it("should display correct data") {
                    
                    //arrange
                    let result = ["Fake", "Data"]
                    //act
                    homeViewController.display(result)
                    //assert
                    expect(homeViewController.dataSource.cards).to(equal(result))
                }
            }
    
            context("invalid error") {
                it("should display correct error") {
            
                    //arrange
                    let error = NSError(domain: "500", code: 500, userInfo: nil)
                    //act
                    homeViewController.showError(error)
                    //assert
                    //verify error shown
                }
            }
        }
    }
}