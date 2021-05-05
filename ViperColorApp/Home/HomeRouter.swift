//
//  HomeRouter.swift
//  ViperColorApp
//
//  Created by IDN MEDIA on 04/05/21.
//

import Foundation
import UIKit

typealias EntryPoint = HomeViewProtocol & UIViewController

protocol HomeRouterDelegate {
    var entry: EntryPoint? { get }
    
    static func start() -> HomeRouterDelegate
    func dismiss(controller: UIViewController?)
    func openSettingPage(viewController: UIViewController?)
}

class HomeRouter: HomeRouterDelegate {
    func openSettingPage(viewController: UIViewController?) {
        let settingRouter = SettingRouter.start()
        let initialVC = settingRouter.entry
        initialVC?.modalPresentationStyle = .popover
        viewController?.present(initialVC ?? UIViewController(), animated: true, completion: nil)
    }
    
    func dismiss(controller: UIViewController?) {
        controller?.dismiss(animated: true, completion: nil)
    }
    
    static func start() -> HomeRouterDelegate {
        let router = HomeRouter()
        
        // Assign VIP
        let view = HomeViewController()
        let presenter = HomePresenter()
        
        view.presenter = presenter
        
        presenter.view = view
        presenter.router = router
        
        router.entry = view as EntryPoint
        
        return router
    }
    
    var entry: EntryPoint?
    
    
}
