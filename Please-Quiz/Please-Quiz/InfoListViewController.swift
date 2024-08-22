//
//  InfoListViewController.swift
//  Please-Quiz
//
//  Created by София Кармаева on 13/5/2024.
//

import UIKit

class InfoListViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoLabel.text = "You are going to pass an educational quiz with several questions from school disciplines. There are easy questions, but at the same time there can be some tricky ones.\nThere will be a question and 4 answers, only one of which is correct. If you choose the correct one, your points will increase by 1; if not, your points will stay as they are. After each question you will know if your answer is correct.\nThink accurately before answering. Good luck!"
    }
    
    @IBAction func startQuiz(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nextScreen = storyboard.instantiateViewController(withIdentifier: "Question1ViewController") as! Question1ViewController
        self.present(nextScreen, animated: true)
    }

}
