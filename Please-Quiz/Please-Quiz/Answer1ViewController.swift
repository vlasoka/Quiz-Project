//
//  Answer1ViewController.swift
//  Please-Quiz
//
//  Created by София Кармаева on 13/5/2024.
//

import UIKit

class Answer1ViewController: UIViewController {
    
    var score = 0
    var answer = "answer"

    @IBOutlet weak var rightAnswerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rightAnswerLabel.text = "Your answer:\n\(answer)\nRight answer:\nOrthocenter"
        print(score)
    }
    
    @IBAction func nextQuestion(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nextScreen = storyboard.instantiateViewController(withIdentifier: "Question2ViewController") as! Question2ViewController
        nextScreen.score = score
        self.present(nextScreen, animated: true)
    }

}
