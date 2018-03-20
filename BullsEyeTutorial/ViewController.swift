//
//  ViewController.swift
//  BullsEyeTutorial
//
//  Created by Jeremy Fleshman on 3/6/18.
//  Copyright © 2018 Jeremy Fleshman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentValue: Int = 0 // have to initialize var to some value
    var targetValue: Int = 0
    
    //instance variable exposed to IB to connect to a UISlider obj
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAlert(){
        let message = "The value of the slider is: \(currentValue)" +
                      "\nThe target value is: \(targetValue)"
        
        
        let alert = UIAlertController(title: "Hello, World!",
                                    message: message,
                             preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK",
                                   style: .default,
                                 handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        startNewRound()
    }

    @IBAction func sliderMoved(_ slider: UISlider){
        currentValue = lroundf(slider.value)
    }
    
    func startNewRound(){
        targetValue = 1 + Int(arc4random_uniform(100))
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    }

    func updateLabels(){
//        targetLabel.text = String(targetValue) // same as
        targetLabel.text = "\(targetValue)"
    }
}

