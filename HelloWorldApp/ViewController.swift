//
//  ViewController.swift
//  HelloWorldApp
//
//  Created by Максим Мигранов on 26.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var greetingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.isHidden = true
        greetingButton.layer.cornerRadius = 10

    }

    @IBAction func greetingButtonPressed() {
        greetingLabel.isHidden.toggle()
        
        greetingButton.setTitle(
            greetingLabel.isHidden ? " Show Greeting" : "Hide Greeting",
            for: .normal
        )
        
//        if greetingLabel.isHidden {
//            greetingButton.setTitle("Show Greeting", for: .normal)
//        } else {
//            greetingButton.setTitle("Hide Greeting", for: .normal)
//        }
    }
    
}

