//
//  ViewController.swift
//  SliderColors
//
//  Created by mariya.shabanova on 19.11.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorSpace: UIView!
    
    @IBOutlet var redPercent: UILabel!
    @IBOutlet var greenPercent: UILabel!
    @IBOutlet var bluePercent: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorSpace.layer.cornerRadius = 10
    }


}

