//
//  ResultViewController.swift
//  Please, Quiz!
//
//  Created by София Кармаева on 18/8/2024.
//

import UIKit

class ResultViewController: UIViewController {
    
    var score = 0
    
    var resultText: String {
        let result = Float(score) / Float(questions.count) * 100
        let stringResult = String(format: "%.1f", result)
        switch result {
        case 90...100:
            return "Congratulations!\nYour score is \(score) wich is \(stringResult)%!\nYou surely was one of the best pupils!"
        case 75..<90:
            return "Yoohoo!\nYour score is \(score) wich is \(stringResult)%!\nYou surely will get 100% next time!"
        case 60..<75:
            return "Hey!\nYour score is \(score) wich is \(stringResult)%!\nRead a bit more would be good for you!"
        default:
            return "Hmm..\nYour score is \(score) wich is \(stringResult)%!\nMaybe you should read more in different fields."
        }
    }
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        resultLabel.text = resultText
    }
     
    @IBAction func retakeQuizPressed(_ sender: UIBarButtonItem) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}
