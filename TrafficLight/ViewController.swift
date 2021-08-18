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
        redLightView.layer.cornerRadius = redLightView.frame.width/2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width/2
        greenLightView.layer.cornerRadius = greenLightView.frame.width/2
        startButton.layer.cornerRadius = 20
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
    }
    
    @IBAction func changeTrafficLights(_ sender: UIButton) {
        startButton.setTitle("NEXT", for: .normal)
        
        sender.tag += 1
        if sender.tag > 3 { sender.tag = 1 }
        
        switch sender.tag {
        case 1:
            redLightView.alpha = 1
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 0.3
        case 2:
            yellowLightView.alpha = 1
            redLightView.alpha = 0.3
            greenLightView.alpha = 0.3
        default:
            greenLightView.alpha = 1
            yellowLightView.alpha = 0.3
            redLightView.alpha = 0.3
        }
    }
}

