//
//  QuizViewController.swift
//  Quiz
//
//  Created by tomoya tanaka on 2020/09/05.
//  Copyright © 2020 Tomoya Tanaka. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    
    var quizArray = [Any]()
    
    var correctAnswer: Int = 0
    
    @IBOutlet var quizTextView: UITextView!
    
    @IBOutlet var choiceButton1: UIButton!
    @IBOutlet var choiceButton2: UIButton!
    @IBOutlet var choiceButton3: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        quizArray.append(["Appleの2015年現在のCEOの名前は？", "スティーブ・ジョブズ", "ティム・クック", "ジョナサン・アイブ", 2 ])
        quizArray.append(["iPhone6s, iPhone6s Plusから新たに導入された、画面タッチの指の圧力を検出する機能をなんという？", "3Dタッチ", "4Dタッチ", "スーパータッチ", 1 ])
        quizArray.append(["iPod touchのモデルの中で最大容量のものは何GB", "64GB", "128GB", "160GB", 2 ])
        quizArray.append(["1985年、Appleを追放されたジョブズが立ち上げた会社名の正式名称あ？", "NEXt,Inc.", "NExT, Inc.", "NeXT, Inc.", 3 ])
        quizArray.append(["2015年9月30日にリリースされたOSXの名前は？", "El Captain", "EL Capitan", "ElCapital", 2 ])
        quizArray.append(["Apple WatchはiPhoneとどんな通信方法でペアリングされる？", "FM電波", "Wi-Fi", "Bluetooth", 3 ])
        
        quizArray.shuffle()
        choiceQuiz()
    }
    
    func choiceQuiz() {
        
        let tmpArray = quizArray[0] as! [Any]
        
        quizTextView.text = tmpArray[0] as? String
        
        choiceButton1.setTitle(tmpArray[1] as? String, for: .normal)
        choiceButton2.setTitle(tmpArray[2] as? String, for: .normal)
        choiceButton3.setTitle(tmpArray[3] as? String, for: .normal)
    }
    
    func performSegueToResult() {
        performSegue(withIdentifier: "toResultView", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResultView" {
            let resultViewController = segue.destination as! ResultViewController
            resultViewController.correctAnswer = self.correctAnswer
        }
    }
    
    @IBAction func choiceAnswer(sender: UIButton) {
        let tmpArray = quizArray[0] as! [Any]
        
        if tmpArray[4] as! Int == sender.tag {
            correctAnswer = correctAnswer + 1
        }
        
        quizArray.remove(at: 0)
        
        if quizArray.count == 0 {
            performSegueToResult()
        } else {
            choiceQuiz()
        }
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
