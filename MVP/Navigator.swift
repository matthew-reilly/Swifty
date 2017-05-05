//
// Created by Matthew Reilly on 5/4/17.
// Copyright (c) 2017 WeddingWire. All rights reserved.
//

import Foundation
import UIKit

enum Page {
    case Home(query: String)
    case Detail(index: Int)
    case Login
}

extension Page {
    
    func authRequired() -> Bool {
        switch self {
            //protected resources
        default:
            return false
        }
    }
}

protocol Nav {
    func open(page: Page, from viewController: AnyObject?)
}

class Navigator: Nav {
    
    let controller: App
    
    init(controller: App) {
        self.controller = controller
    }
    
    func open(page: Page, from viewController: AnyObject?) {
        guard let vc = viewController as? UIViewController else { return }
        
        if page.authRequired() == true {
            //not authed, go to login page
            Page.Login.open(from: vc, controller: controller)
            return
        }
        
        page.open(from: vc, controller: controller)
    }
    
}

extension Page {
    func open(from viewController: UIViewController, animated: Bool = true, controller: App) -> Bool {
        switch self {
        case .Home(let query):
            let presenter = HomePresenter(with: controller.getHomeManager(), navigator: controller.getNavigator())
            let vc        = HomeViewController(with: presenter)
            presenter.setView(vc)
            viewController.navigationController?.pushViewController(vc, animated: animated)
        case .Login:
            let presenter = LoginPresenter(with: controller.getHomeManager(), navigator: controller.getNavigator())
            let detail = LoginViewController(with: presenter)
            viewController.presentViewController(detail, animated: animated, completion: nil)
        case .Detail(let index):
            break
            
        }
        return true
    }
}

