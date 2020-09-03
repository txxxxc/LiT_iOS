//
//  ViewController.swift
//  StopWatch
//
//  Created by tomoya tanaka on 2020/09/03.
//  Copyright © 2020 Tomoya Tanaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    @IBOutlet var hanteiLabel: UILabel!
    
    var count: Float = 0.0
    
    var timer: Timer = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        hanteiLabel.text = ""
    }
    
    @objc func up() {
        
        count = count + 0.01
        
        label.text = String(format:"%.2f", count)
    }
    
    @ objc func hantei() {
        if count <= 10.20 && count >= 9.80 {
            hanteiLabel.text = "PERFECT"
        } else if count <= 10.30 && count >= 9.70 {
            hanteiLabel.text = "GREAT"
        } else if count <= 10.50 && count >= 9.50 {
            hanteiLabel.text = "GOOD"
        } else {
            hanteiLabel.text = "BAD"
        }
    }

    @IBAction func start() {
        if !timer.isValid {
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(self.up), userInfo: nil, repeats: true)
        }
        
        hanteiLabel.text = ""
    }
    
    @IBAction func stop() {
        if timer.isValid {
            timer.invalidate()
        }
        
        self.hantei()
    }
    
    @IBAction func reset() {
        if timer.isValid {
            timer.invalidate()
        }
        
        count = 0.00
        label.text = String(format:"%.2f", count)
        
        hanteiLabel.text = ""

    }
}

