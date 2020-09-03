//
//  ViewController.swift
//  MentorBook
//
//  Created by tomoya tanaka on 2020/09/04.
//  Copyright © 2020 Tomoya Tanaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mentorArray: [Mentor] = []
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabel: UILabel!
    
    var index: Int = 0
    
    func setUI() {
        print(index)
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mentorArray.append(Mentor(name: "ながた", imageName: "nagata.jpg", course: "iPhone"))
        mentorArray.append(Mentor(name: "りょう", imageName: "ryo.jpg", course: "Unity"))
        mentorArray.append(Mentor(name: "たいてぃ", imageName: "taithi.jpg", course: "WebS,WebD"))
        
        setUI()
        print(mentorArray.count)
        
    }
    
    @IBAction func mae() {
        if 0 == index {
            index = 0
        } else {
            index = index - 1
        }
        
        setUI()
        
        setUI()
    }

    @IBAction func tugi() {
        if mentorArray.count - 1 == index {
            index = 0
        } else {
            index = index + 1
        }
        
        setUI()
        
    }

}

