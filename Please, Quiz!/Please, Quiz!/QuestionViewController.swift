//
//  QuestionViewController.swift
//  Please, Quiz!
//
//  Created by София Кармаева on 16/8/2024.
//

import UIKit
import AVFoundation

class QuestionViewController: UIViewController {
    
    var currentQuestion = 0
    var score = 0
    
    let rightColor = UIColor(red: 0.33, green: 0.94, blue: 0.77, alpha: 1.00)
    let wrongColor = UIColor(red: 1.00, green: 0.46, blue: 0.46, alpha: 1.00)
    let buttonColor = UIColor(named: "lightPink")
    
    var player: AVAudioPlayer!
    
    var timer = Timer()
    
    @IBOutlet weak var questionNumberLabel: UILabel!
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var answer1Label: UIButton!
    @IBOutlet weak var answer2Label: UIButton!
    @IBOutlet weak var answer3Label: UIButton!
    @IBOutlet weak var answer4Label: UIButton!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        displayQuestion()
    }
    
    func displayQuestion() {
        questionNumberLabel.text = "\(currentQuestion + 1)/\(questions.count)"
        questionLabel.text = questions[currentQuestion].questionText
        answer1Label.setTitle(questions[currentQuestion].ans1, for: .normal)
        answer1Label.tintColor = buttonColor
        answer2Label.setTitle(questions[currentQuestion].ans2, for: .normal)
        answer2Label.tintColor = buttonColor
        answer3Label.setTitle(questions[currentQuestion].ans3, for: .normal)
        answer3Label.tintColor = buttonColor
        answer4Label.setTitle(questions[currentQuestion].ans4, for: .normal)
        answer4Label.tintColor = buttonColor
        let progress = Float(currentQuestion + 1) / Float(questions.count)
        progressBar.setProgress(progress, animated: true)
        timer = Timer.scheduledTimer(timeInterval: 30.0, target: self, selector: #selector(timeIsUp), userInfo: nil, repeats: false)
    }
    
    @objc func timeIsUp() {
        playSound("outOfTime")
        changeQuestion()
    }

    @IBAction func answerChosen(_ sender: UIButton) {
        timer.invalidate()
        if sender.currentTitle == questions[currentQuestion].correctAnswer {
            score += 1
            playSound("right")
            buttonLighted(button: sender, color: rightColor)
        } else {
            playSound("wrong")
            buttonLighted(button: sender, color: wrongColor)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            self.changeQuestion()
        }
    }
    
    func changeQuestion() {
        currentQuestion += 1
        if currentQuestion < questions.count {
            displayQuestion()
        } else {
            showResult()
        }
    }
    
    func buttonLighted(button: UIButton, color: UIColor) {
        button.tintColor = color

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            button.tintColor = self.buttonColor
        }
    }
    
    func playSound(_ soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
    func showResult() {
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.score = score
        }
    }
    
}
