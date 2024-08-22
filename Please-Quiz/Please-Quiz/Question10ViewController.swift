//
//  Question10ViewController.swift
//  Please-Quiz
//
//  Created by София Кармаева on 13/5/2024.
//

import UIKit
import AVFoundation

class Question10ViewController: UIViewController {
    
    var score = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var answer1Button: UIButton!
    @IBOutlet weak var answer2Button: UIButton!
    @IBOutlet weak var answer3Button: UIButton!
    @IBOutlet weak var answer4Button: UIButton!
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = "What is the name of the galaxy closest to the Milky Way?"
        answer1Button.setTitle("Ursa Major", for: .normal)
        answer2Button.setTitle("NGC 2419", for: .normal)
        answer3Button.setTitle("Large Magellanic Cloud", for: .normal)
        answer4Button.setTitle("Andromeda Galaxy", for: .normal)
    }

    @IBAction func answerChosen(_ sender: UIButton) {
        let answer = sender.titleLabel?.text
        if answer == "Andromeda Galaxy" {
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
        let nextScreen = storyboard.instantiateViewController(withIdentifier: "Answer10ViewController") as! Answer10ViewController
        nextScreen.score = newScore
        nextScreen.answer = thisAnswer
        self.present(nextScreen, animated: true)
    }

}
