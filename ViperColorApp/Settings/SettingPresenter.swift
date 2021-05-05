//
//  SettingPresenter.swift
//  ViperColorApp
//
//  Created by IDN MEDIA on 04/05/21.
//

import Foundation
import UIKit

protocol SettingPresenterDelegate {
    var router: SettingRouterDelegate? { get set }
    var view: SettingViewDelegate? { get set }
    
    func connectToLabel(text: String)
    func backButton()
}

class SettingPresenter: SettingPresenterDelegate {
    var view: SettingViewDelegate?
    var router: SettingRouterDelegate?
    
    func connectToLabel(text: String) {
        view?.updateLabel(text: text)
    }
    
    func backButton() {
        router?.dismiss(viewController: view as? UIViewController)
    }
}
