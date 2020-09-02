//
//  ViewController.swift
//  Nabeatsu
//
//  Created by nagata on 2017/06/19.
//  Copyright © 2017年 Life is Tech!. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int = 0
    @IBOutlet var countLabel: UILabel!
    @IBOutlet var faceLabel: UILabel!
    @IBOutlet var circleButton: UIButton!
    @IBOutlet var clearButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        circleButton.layer.cornerRadius = 10
        circleButton.layer.shadowColor = UIColor.black.cgColor
        circleButton.layer.shadowOpacity = 0.5
        circleButton.layer.shadowOffset = CGSize(width: 3, height: 3)
        circleButton.layer.borderColor = UIColor.white.cgColor
        
        clearButton.layer.cornerRadius = 50.0
        clearButton.layer.borderColor = UIColor.black.cgColor
        
        
        
        faceLabel.layer.borderWidth = 1
        faceLabel.layer.borderColor = UIColor.black.cgColor
    }
    
    func isAho() -> Bool {
        // 問題1: 3の倍数かどうか調べる
        if number % 3 == 0 {
            return true
        
        }
        
        // 問題4: 3がつくかどうか調べる
        // 問題4をやるときは問題3と問題2の答えを消してから書こう
        var checkNum: Int = number
        
        while checkNum != 0 {
            if checkNum % 10 == 3 {
                return true
            } else {
                checkNum = checkNum / 10
            }
        }
        
        return false
    }
    
    @IBAction func plusButton() {
        number = number + 1
        countLabel.text = String(number)
        
        if isAho() == true {
            
            faceLabel.text = "ﾍ(ﾟ∀ﾟﾍ)ｱﾋｬ"
        } else {
            
            faceLabel.text = "(゜o゜)"
        }
    }
    
    @IBAction func clear() {
        number = 0
        countLabel.text = String(number)
    }
}

