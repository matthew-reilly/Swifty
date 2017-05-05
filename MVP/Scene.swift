//
// Created by Matthew Reilly on 5/5/17.
// Copyright (c) 2017 ___FULLUSERNAME___. All rights reserved.
//

import Foundation
import UIKit

enum Scene {
    case Home(query: String)
    case Detail(index: Int)
    case Login
}

extension Scene {
    
    func authRequired() -> Bool {
        switch self {
                //protected resources
                
        default:
            return false
        }
    }
}

extension Scene {
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
