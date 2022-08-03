//
//  ViewController.swift
//  HelloWorldApp
//
//  Created by Максим Мигранов on 26.07.2022.
//

import UIKit

enum TrafficLightSignal {
    case red, yellow, green
}

class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    
    var trafficLightSignal = TrafficLightSignal.red
    let lightOff: CGFloat = 0.3
    let lightOn: CGFloat = 1

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        
        redLight.layer.cornerRadius = redLight.frame.size.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.size.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.size.width / 2
        
        redLight.alpha = lightOff
        yellowLight.alpha = lightOff
        greenLight.alpha = lightOff
        
    }

    @IBAction func startButtonClick() {
        startButton.setTitle("NEXT", for: .normal)
        
        switch trafficLightSignal {
        case .red:
            greenLight.alpha = lightOff
            redLight.alpha = lightOn
            trafficLightSignal = .yellow
        case .yellow:
            redLight.alpha = lightOff
            yellowLight.alpha = lightOn
            trafficLightSignal = .green
        case .green:
            yellowLight.alpha = lightOff
            greenLight.alpha = lightOn
            trafficLightSignal = .red
        }
        if greenLight.alpha == lightOn {
            startButton.setTitle("RESTART", for: .normal)
        }
    }
    
}

    


