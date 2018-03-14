//
//  ViewController.swift
//  BullsEyeTutorial
//
//  Created by Jeremy Fleshman on 3/6/18.
//  Copyright © 2018 Jeremy Fleshman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentValue: Int = 50 // magic number for init slider val -- is there a way to init w/ slider val instead?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func showAlert(){
        let message = "The value of the slider is: \(currentValue)"
        
        
        let alert = UIAlertController(title: "Hello, World!",
                                    message: message,           //changed
                             preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK",                 //changed
                                   style: .default,
                                 handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }

    @IBAction func sliderMoved(_ slider: UISlider){
//        print("The value of the slider is now: \(slider.value)")
        currentValue = lroundf(slider.value)
    }
}

