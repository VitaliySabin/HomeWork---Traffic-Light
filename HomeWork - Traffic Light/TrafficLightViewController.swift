//
//  ViewController.swift
//  HomeWork - Traffic Light
//
//  Created by Виталий Сабин on 18.03.2023.
//

import UIKit

final class TrafficLightViewController: UIViewController {
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var button: UIButton!
    
    private var currentLight: UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.layer.cornerRadius = 10
        currentLight = redLightView
    }
    
    override func viewWillLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.frame.height / 2
        yellowLightView.layer.cornerRadius = redLightView.frame.height / 2
        greenLightView.layer.cornerRadius = redLightView.frame.height / 2
    }
    
    @IBAction func buttonWasPressed() {
        button.setTitle("NEXT", for: .normal)
        
        switch currentLight {
        case redLightView:
            currentLight = yellowLightView
            redLightView.alpha = 1.0
            greenLightView.alpha = 0.3
            
        case yellowLightView:
            currentLight = greenLightView
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1.0
            
        case greenLightView:
            currentLight = redLightView
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1.0
            
        default: break
        }
    }
}
