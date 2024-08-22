//
//  Answer4ViewController.swift
//  Please-Quiz
//
//  Created by София Кармаева on 13/5/2024.
//

import UIKit

class Answer4ViewController: UIViewController {
    
    var score = 0
    var answer = "answer"
    
    @IBOutlet weak var rightAnswerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rightAnswerLabel.text = "Your answer:\n\(answer)\nRight answer:\nPancreas"
        print(score)
    }
    
    @IBAction func nextQuestion(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nextScreen = storyboard.instantiateViewController(withIdentifier: "Question5ViewController") as! Question5ViewController
        nextScreen.score = score
        self.present(nextScreen, animated: true)
    }
    
}
