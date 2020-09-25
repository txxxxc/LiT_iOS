//
//  InputViewController.swift
//  RealmTodo
//
//  Created by tomoya tanaka on 2020/09/25.
//  Copyright © 2020 Tomoya Tanaka. All rights reserved.
//

import UIKit
import RealmSwift

class InputViewController: UIViewController {
    
    @IBOutlet weak var todoTextField: UITextField!
    @IBOutlet weak var todoDatePicker: UIDatePicker!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTodo(sender: AnyObject) {
        let newTodo: Todo = Todo()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"
        newTodo.title = todoTextField.text!
        newTodo.date = formatter.string(from: todoDatePicker.date)
        print(newTodo)
        do {
            let realm = try Realm()
            try realm.write({ () -> Void in
                realm.add(newTodo)
                self.navigationController?.popViewController(animated: true)
            })
        } catch let error as NSError {
            print(error.localizedDescription)
        }
    }
    
    @IBAction func cancelAddTodo(sender: AnyObject) {
        self.navigationController?.popViewController(animated: true)
    }

}
