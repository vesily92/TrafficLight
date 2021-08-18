//
//  ViewController.swift
//  TrafficLight
//
//  Created by Василий Пронин on 17.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var startButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.layer.cornerRadius = 70
        yellowLightView.layer.cornerRadius = 70
        greenLightView.layer.cornerRadius = 70
        startButton.layer.cornerRadius = 20
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
    }

    @IBAction func changeTrafficLights() {
        
    }
    
}

