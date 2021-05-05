//
//  HomeViewController.swift
//  ViperColorApp
//
//  Created by IDN MEDIA on 04/05/21.
//

import UIKit

protocol HomeViewProtocol {
    var presenter: HomePresenterDelegate? { get set }
    
    func updateRgbLabel(with value: String)
    func updateBackground(with rgbColor: (CGFloat, CGFloat, CGFloat))
}

class HomeViewController: UIViewController, HomeViewProtocol {
    func updateBackground(with rgbColor: (CGFloat, CGFloat, CGFloat)) {
        self.view.backgroundColor = UIColor(red: rgbColor.0, green: rgbColor.1, blue: rgbColor.2, alpha: 1)
    }
    
    func updateRgbLabel(with value: String) {
        rgbValueLabel.text = value
    }
    
    var presenter: HomePresenterDelegate?
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var rgbValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onRedSliderChange(_ sender: Any) {
        let red: Float = redSlider.value
        let green: Float = greenSlider.value
        let blue: Float = blueSlider.value
        
        presenter?.onValueChange(with: (red, green, blue))
    }
    
    @IBAction func onGreenSliderChange(_ sender: Any) {
        let red: Float = redSlider.value
        let green: Float = greenSlider.value
        let blue: Float = blueSlider.value
        
        presenter?.onValueChange(with: (red, green, blue))
    }
    
    @IBAction func onBlueSliderChange(_ sender: Any) {
        let red: Float = redSlider.value
        let green: Float = greenSlider.value
        let blue: Float = blueSlider.value
        
        presenter?.onValueChange(with: (red, green, blue))
    }
    
    @IBAction func changePageButton(_ sender: Any) {
        presenter?.onButtonPressed()
    }
    

}
