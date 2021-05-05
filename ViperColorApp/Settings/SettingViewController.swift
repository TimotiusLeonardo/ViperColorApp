//
//  SettingViewController.swift
//  ViperColorApp
//
//  Created by IDN MEDIA on 04/05/21.
//

import UIKit

protocol SettingViewDelegate {
    var presenter: SettingPresenterDelegate? { get set }
    
    func updateBackground()
    func updateLabel(text: String)
}

class SettingViewController: UIViewController, SettingViewDelegate {
    
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var label: UILabel!
    
    func updateBackground() {
        self.view.backgroundColor = .red
    }
    
    func updateLabel(text: String) {
        label.text = text
    }
    
    var presenter: SettingPresenterDelegate?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func switchPressed(_ sender: UISwitch) {
        presenter?.connectToLabel(text: "Touched")
    }

}
