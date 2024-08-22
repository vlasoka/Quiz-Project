//
//  Answer2ViewController.swift
//  Please-Quiz
//
//  Created by София Кармаева on 13/5/2024.
//

import UIKit

class Answer2ViewController: UIViewController {
    
    var score = 0
    var answer = "answer"
    
    @IBOutlet weak var rightAnswerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rightAnswerLabel.text = "Your answer:\n\(answer)\nRight answer:\nAdiabatic"
        print(score)
    }

    @IBAction func nextQuestion(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nextScreen = storyboard.instantiateViewController(withIdentifier: "Question3ViewController") as! Question3ViewController
        nextScreen.score = score
        self.present(nextScreen, animated: true)
    }
    
}
