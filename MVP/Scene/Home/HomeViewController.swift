//
// Created by Matthew Reilly on 5/4/17.
// Copyright (c) 2017 WeddingWire. All rights reserved.
//

import Foundation
import UIKit


protocol HomeView: class {
    func display(cards: [String])
    func showError(error: NSError)
}

class HomeViewController : ViewController, HomeView {
    
    let presenter: HomePresenting!
    let dataSource = DataSource()
    
    var query = "cardRequestParams"
    
    required init(with presenter: HomePresenting) {
        self.presenter = presenter
        super.init()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("Not implemented")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.getCards(query)
    }
    
    func display(cards: [String]) {
        dataSource.cards = cards
    }
    
    func showError(error: NSError) {
        //display error dialog
    }
}

class DataSource: NSObject, UICollectionViewDataSource {

    var cards = [String]()
    
    public func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cards.count
    }
    
    public func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
    
}