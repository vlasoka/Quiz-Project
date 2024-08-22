//
//  Answer5ViewController.swift
//  Please-Quiz
//
//  Created by София Кармаева on 13/5/2024.
//

import UIKit

class Answer5ViewController: UIViewController {
    
    var score = 0
    var answer = "answer"
    
    @IBOutlet weak var rightAnswerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rightAnswerLabel.text = "Your answer:\n\(answer)\nRight answer:\nSeptember 1, 1939\n–\nSeptember 2, 1945"
        print(score)
    }

    @IBAction func nextQuestion(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nextScreen = storyboard.instantiateViewController(withIdentifier: "Question6ViewController") as! Question6ViewController
        nextScreen.score = score
        self.present(nextScreen, animated: true)
    }
    
}
