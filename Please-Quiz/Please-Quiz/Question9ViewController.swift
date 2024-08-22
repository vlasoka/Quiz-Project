//
//  Question9ViewController.swift
//  Please-Quiz
//
//  Created by София Кармаева on 13/5/2024.
//

import UIKit
import AVFoundation

class Question9ViewController: UIViewController {
    
    var score = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var answer1Button: UIButton!
    @IBOutlet weak var answer2Button: UIButton!
    @IBOutlet weak var answer3Button: UIButton!
    @IBOutlet weak var answer4Button: UIButton!
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = "The British Invasion is a term used to describe a musical phenomenon in which British rock music began to dominate both the national and international charts. When did it happen?"
        answer1Button.setTitle("1950s", for: .normal)
        answer2Button.setTitle("1960s", for: .normal)
        answer3Button.setTitle("1970s", for: .normal)
        answer4Button.setTitle("1980s", for: .normal)
    }

    @IBAction func answerChosen(_ sender: UIButton) {
        let answer = sender.titleLabel?.text
        if answer == "1960s" {
            print("correct answer")
            playSound("right")
            score += 1
        } else {
            print("incorrect answer")
            playSound("wrong")
        }
        goFurther(score, answer!)
    }
    
    func playSound(_ soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
    func goFurther(_ newScore: Int, _ thisAnswer: String) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nextScreen = storyboard.instantiateViewController(withIdentifier: "Answer9ViewController") as! Answer9ViewController
        nextScreen.score = newScore
        nextScreen.answer = thisAnswer
        self.present(nextScreen, animated: true)
    }
    
}
