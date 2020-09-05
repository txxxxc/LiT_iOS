//
//  ViewController.swift
//  CocoaPodsApp
//
//  Created by tomoya tanaka on 2020/09/05.
//  Copyright © 2020 Tomoya Tanaka. All rights reserved.
//

import UIKit
import PKHUD

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        HUD.flash(.success, delay: 2.0)
    }

}

