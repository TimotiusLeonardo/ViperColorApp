//
//  HomePresenter.swift
//  ViperColorApp
//
//  Created by IDN MEDIA on 04/05/21.
//

import Foundation
import UIKit

protocol HomePresenterDelegate {
    var router: HomeRouterDelegate? { get set }
    var view: HomeViewProtocol? { get set }
    
    func onValueChange(with rgb: (Float, Float, Float))
    func onSaveDataChange()
    func onButtonPressed()
}

class HomePresenter: HomePresenterDelegate {
    func onButtonPressed() {
        router?.openSettingPage(viewController: view as? UIViewController)
    }
    
    func onValueChange(with rgb: (Float, Float, Float)) {
        let step: Float = 1
        
        let red = CGFloat(round(rgb.0 / step) * step)
        let green = CGFloat(round(rgb.1 / step) * step)
        let blue = CGFloat(round(rgb.2 / step) * step)
        
        view?.updateRgbLabel(with: "RGB Color is (\(red), \(green), \(blue))")
        view?.updateBackground(with: (red/255, green/255, blue/255))
    }
    
    func onSaveDataChange() {
        //
    }
    
    var router: HomeRouterDelegate?
    
    var view: HomeViewProtocol?
    
    
}
