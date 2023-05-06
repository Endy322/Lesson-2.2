//
//  ViewController.swift
//  Lesson 2.2
//
//  Created by Andrew Lesnov on 06.05.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var trafficLightBody: UIView!
    @IBOutlet var startTrafficLight: UIButton!
    
    @IBOutlet var redWindow: UIView!
    @IBOutlet var yellowWindow: UIView!
    @IBOutlet var greenWindow: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startTrafficLight.layer.cornerRadius = 15
        trafficLightBody.layer.cornerRadius = 15
        
        redWindow.layer.cornerRadius = 90
        yellowWindow.layer.cornerRadius = 90
        greenWindow.layer.cornerRadius = 90
        
    }


}

