//
// Created by Matthew Reilly on 5/5/17.
// Copyright (c) 2017 ___FULLUSERNAME___. All rights reserved.
//

import Foundation
import WWAppearance

enum ViewState {
    /// Shows loading state
    case loading
    /// Shows a state when no content is there to present
    case empty
    /// Shows a state when a network error or other error has occurred
    case error
    /// Shows the content that should be presented
    case content
}

class ViewController : UIViewController {
   
  
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}

