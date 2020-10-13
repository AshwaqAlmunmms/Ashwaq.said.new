//
//  ViewController.swift
//  quiz
//
//  Created by Ashwaq Alghamdi on 25/02/1442 AH.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        label1.text = questions[currentQuestionIndex] }
    
    
    let questions : [String] = [" what is 9 + 9 " , " what is 5 + 5 "]
    let answers : [String] = ["18" , "10"]
    
    var currentQuestionIndex : Int = 0


@IBOutlet weak var label1: UILabel!
@IBOutlet weak var label2: UILabel!

    @IBAction func b1(_ sender: UIButton){
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
        currentQuestionIndex = 0 }
        
        let q : String = questions[currentQuestionIndex]
        label1.text = q
        label2.text = "???"
        
    }
    
    @IBAction func b2(_ sender: UIButton){
        let answer: String = answers[currentQuestionIndex]
       label2.text = answer
    }
}

