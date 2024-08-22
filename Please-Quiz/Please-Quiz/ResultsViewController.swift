//
//  ResultsViewController.swift
//  Please-Quiz
//
//  Created by София Кармаева on 13/5/2024.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var score = 0
    
    @IBOutlet weak var resultsLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        resultsLabel.text = "Your result is \(score * 10)%"
        print(score)
    }

    @IBAction func retakeQuiz(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nextScreen = storyboard.instantiateViewController(withIdentifier: "InfoListViewController") as! InfoListViewController
        self.present(nextScreen, animated: true)
    }
    
    @IBAction func exitApp(_ sender: UIButton) {
        UIControl().sendAction(#selector(URLSessionTask.suspend), to: UIApplication.shared, for: nil)
    }
    
}
