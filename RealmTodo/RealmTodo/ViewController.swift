//
//  ViewController.swift
//  RealmTodo
//
//  Created by tomoya tanaka on 2020/09/25.
//  Copyright © 2020 Tomoya Tanaka. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var todoItem: Results<Todo>!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = false
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 70
        do {
            let realm = try Realm()
            todoItem = realm.objects(Todo.self)
            tableView.reloadData()
            print(todoItem)
        } catch {
            print("error")
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoItem.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        let object = todoItem[indexPath.row]
        print(object)
        
        
        cell.textLabel?.text = object.title
        cell.todoDateLabel?.text = object.date
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {

         // 先にデータを削除しないと、エラーが発生します。
         do{
             let realm = try Realm()
             try realm.write {
                 realm.delete(self.todoItem[indexPath.row])
             }
             tableView.deleteRows(at: [indexPath], with: .automatic)
         }catch{
         }
         tableView.reloadData()
     }
    


}

