//
//  ViewController.swift
//  Count
//
//  Created by tomoya tanaka on 2020/09/02.
//  Copyright © 2020 Tomoya Tanaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var number: Int = 0
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func plus() {
        number += 1
        label.text = String(number)
        if number >= 10 {
            label.textColor = UIColor.red
        } else if number <= -10 {
            label.textColor = UIColor.blue
        } else {
            label.textColor = UIColor.black
        }
    }
    
    @IBAction func minus() {
        number -= 1
        label.text = String(number)
        if number >= 10 {
            label.textColor = UIColor.red
        } else if number <= -10 {
            label.textColor = UIColor.blue
        } else {
            label.textColor = UIColor.black
        }
    }
    
    @IBAction func multiply() {
        number = number * 2
        label.text = String(number)
        if number >= 10 {
            label.textColor = UIColor.red
        } else if number <= -10 {
            label.textColor = UIColor.blue
        } else {
            label.textColor = UIColor.black
        }
    }
    
    @IBAction func divide() {
        number = number / 2
        label.text = String(number)
        if number >= 10 {
            label.textColor = UIColor.red
        } else if number <= -10 {
            label.textColor = UIColor.blue
        } else {
            label.textColor = UIColor.black
        }
    }
    
    @IBAction func clear() {
        number = 0
        label.text = String(number)
        if number >= 10 {
            label.textColor = UIColor.red
        } else if number <= -10 {
            label.textColor = UIColor.blue
        } else {
            label.textColor = UIColor.black
        }
    }
}

