//
//  ViewController.swift
//  Lesson 2.2
//
//  Created by Andrew Lesnov on 06.05.2023.
//

import UIKit

class ViewController: UIViewController {
            
    enum CurrentLight {
        case red, yellow, green
    }
    
    @IBOutlet var trafficLightBody: UIView!
    @IBOutlet var redWindow: UIView!
    @IBOutlet var yellowWindow: UIView!
    @IBOutlet var greenWindow: UIView!
    
    @IBOutlet var startTrafficLight: UIButton!
    
    private let trafficLightOff: CGFloat = 0.3
    private let trafficLightOn: CGFloat = 1
    private var currentLight = CurrentLight.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redWindow.alpha = trafficLightOn
        yellowWindow.alpha = trafficLightOff
        greenWindow.alpha = trafficLightOff
        
        trafficLightBody.layer.cornerRadius = 15
        startTrafficLight.layer.cornerRadius = 15
        
        redWindow.layer.cornerRadius = 90
        yellowWindow.layer.cornerRadius = 90
        greenWindow.layer.cornerRadius = 90
        
    }
    
    
    
    @IBAction func switchingTrafficLight() {
        if startTrafficLight.currentTitle == "Start" {
            startTrafficLight.setTitle("Next", for: .normal)
        }
            
            switch currentLight {
                case .red:
                greenWindow.alpha = trafficLightOff
                redWindow.alpha = trafficLightOn
                currentLight = .yellow
            case .yellow:
                redWindow.alpha = trafficLightOff
                yellowWindow.alpha = trafficLightOn
                currentLight = .green
            case .green:
                greenWindow.alpha = trafficLightOn
                yellowWindow.alpha = trafficLightOff
                currentLight = .red
            }
            
        }
        
    }
    



