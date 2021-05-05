//
//  SettingRouter.swift
//  ViperColorApp
//
//  Created by IDN MEDIA on 04/05/21.
//

import Foundation
import UIKit

typealias SettingEntryPoint = SettingViewDelegate & UIViewController

protocol SettingRouterDelegate {
    var entry: SettingEntryPoint? { get }
    
    static func start() -> SettingRouter
}

class SettingRouter: SettingRouterDelegate {
    static func start() -> SettingRouter {
        let router = SettingRouter()
        
        // Assign VIP
        let view = SettingViewController()
        let presenter = SettingPresenter()
        
        view.presenter = presenter
        
        presenter.view = view
        presenter.router = router
        
        router.entry = view as SettingEntryPoint
        
        return router
    }
    
    var entry: SettingEntryPoint?
    
    
}
