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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startTrafficLight.layer.cornerRadius = 15
    }


}

