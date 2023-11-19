//
//  ViewController.swift
//  SliderColors
//
//  Created by mariya.shabanova on 19.11.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var colorSpace: UIView!
    
    @IBOutlet var redPercent: UILabel!
    @IBOutlet var greenPercent: UILabel!
    @IBOutlet var bluePercent: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    private var currentRedPersent = 0.51
    private var currentGreenPersent = 0.51
    private var currentBluePersent = 0.51
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorSpace.layer.cornerRadius = 10
        changeColor()
    }

    @IBAction func redSliderChanged() {
        let currentRedPersentText =  String(format: "%.2f", redSlider.value)
        redPercent.text = currentRedPersentText
        currentRedPersent = Double(currentRedPersentText)!
        changeColor()
    }
    
    @IBAction func greenSliderChanged() {
        let currentGreenPersentText = String(format: "%.2f", greenSlider.value)
        greenPercent.text = currentGreenPersentText
        currentGreenPersent = Double(currentGreenPersentText)!
        changeColor()
    }
    
    @IBAction func blueSliderChanged() {
        let currentBluePersentText = String(format: "%.2f", blueSlider.value)
        bluePercent.text = currentBluePersentText
        currentBluePersent = Double(currentBluePersentText)!
        changeColor()
    }
    
    private func changeColor() {
        colorSpace.backgroundColor = UIColor(red: currentRedPersent, green: currentGreenPersent, blue: currentBluePersent, alpha: 1.0)
    }
}

