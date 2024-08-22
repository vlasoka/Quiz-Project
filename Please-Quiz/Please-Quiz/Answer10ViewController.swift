//
//  Answer10ViewController.swift
//  Please-Quiz
//
//  Created by София Кармаева on 13/5/2024.
//

import UIKit

class Answer10ViewController: UIViewController {
    
    var score = 0
    var answer = "answer"
    
    @IBOutlet weak var rightAnswerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rightAnswerLabel.text = "Your answer:\n\(answer)\nRight answer:\nAndromeda Galaxy"
        print(score)
    }
    
    @IBAction func finishQuiz(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nextScreen = storyboard.instantiateViewController(withIdentifier: "ResultsViewController") as! ResultsViewController
        nextScreen.score = score
        self.present(nextScreen, animated: true)
    }
    
}
