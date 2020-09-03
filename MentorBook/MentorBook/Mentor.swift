//
//  Mentor.swift
//  MentorBook
//
//  Created by tomoya tanaka on 2020/09/04.
//  Copyright © 2020 Tomoya Tanaka. All rights reserved.
//

import UIKit

class Mentor {
    
    var name: String!
    
    var course: String!
    
    var imageName: String!
    
    init(name: String, imageName: String, course: String) {
        self.name = name
        self.imageName = imageName
        self.course = course
    }
    
    func getImage() -> UIImage {
        return UIImage(named: imageName)!
    }
}
