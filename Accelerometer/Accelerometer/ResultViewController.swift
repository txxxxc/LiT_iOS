//
//  ResultViewController.swift
//  Accelerometer
//
//  Created by tomoya tanaka on 2020/09/05.
//  Copyright © 2020 Tomoya Tanaka. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var accelerationX: Double!
    
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        let result: Double = fabs(accelerationX*100)
        label.text = String(format: "%.1f", result)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
