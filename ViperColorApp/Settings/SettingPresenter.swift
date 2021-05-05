//
//  SettingPresenter.swift
//  ViperColorApp
//
//  Created by IDN MEDIA on 04/05/21.
//

import Foundation

protocol SettingPresenterDelegate {
    var router: SettingRouterDelegate? { get set }
    var view: SettingViewDelegate? { get set }
    
    func connectToLabel(text: String)
}

class SettingPresenter: SettingPresenterDelegate {
    var view: SettingViewDelegate?
    var router: SettingRouterDelegate?
    
    func connectToLabel(text: String) {
        view?.updateLabel(text: text)
    }
}
