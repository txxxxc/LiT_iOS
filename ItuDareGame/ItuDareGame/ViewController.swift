//
//  ViewController.swift
//  ItuDareGame
//
//  Created by tomoya tanaka on 2020/09/03.
//  Copyright © 2020 Tomoya Tanaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var itsuLabel: UILabel!
    @IBOutlet var dokodeLabel: UILabel!
    @IBOutlet var daregaLabel: UILabel!
    @IBOutlet var doshitaLabel: UILabel!
    
    let itsuArray: [String] = ["一年前", "一週間", "機能", "今日"]
    
    let dokodeArray: [String] = ["山の上で", "アメリカで", "学校で", "クラスで"]
    
    let daregaArray: [String] = ["僕が", "大統領が", "先生が", "友達が"]
    
    let doshitaArray: [String] = ["叫んだ", "演説した", "怒った", "踊った"]
    
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func change() {
        
        itsuLabel.text = itsuArray[index]
        dokodeLabel.text = dokodeArray[index]
        daregaLabel.text = daregaArray[index]
        doshitaLabel.text = doshitaArray[index]
        
        index = index + 1
        
        if index > 3 {
            index = 0
        }
    }
    
    @IBAction func reset() {
        
        itsuLabel.text = "---"
        dokodeLabel.text = "---"
        daregaLabel.text = "---"
        doshitaLabel.text = "---"
        
        index = 0
        
    }
    
    @IBAction func ramdom() {
        let itsuIndex = Int.random(in: 0...3)
        let dokodeIndex = Int.random(in: 0...3)
        let daregaIndex = Int.random(in: 0...3)
        let doshitaIndex = Int.random(in: 0...3)
        
        print("いつ： \(itsuIndex)")
        print("いつ： \(dokodeIndex)")
        print("いつ： \(daregaIndex)")
        print("いつ： \(doshitaIndex)")
        
        itsuLabel.text = itsuArray[itsuIndex]
        dokodeLabel.text = dokodeArray[dokodeIndex]
        daregaLabel.text = daregaArray[daregaIndex]
        doshitaLabel.text = doshitaArray[doshitaIndex]
    }


}

