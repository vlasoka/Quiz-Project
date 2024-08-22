//
//  Question1ViewController.swift
//  Please-Quiz
//
//  Created by София Кармаева on 13/5/2024.
//

import UIKit
import AVFoundation

class Question1ViewController: UIViewController {
    
    var thisScore = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var answer1Button: UIButton!
    @IBOutlet weak var answer2Button: UIButton!
    @IBOutlet weak var answer3Button: UIButton!
    @IBOutlet weak var answer4Button: UIButton!
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = "What is the point of intersection of the altitudes of a triangle called?"
        answer1Button.setTitle("Center of the inscribed circle", for: .normal)
        answer2Button.setTitle("Circumcenter", for: .normal)
        answer3Button.setTitle("Orthocenter", for: .normal)
        answer4Button.setTitle("Center of mass", for: .normal)
    }

    @IBAction func answerChosen(_ sender: UIButton) {
        let answer = sender.titleLabel?.text
        if answer == "Orthocenter" {
            print("correct answer")
            playSound("right")
            thisScore = 1
        } else {
            print("incorrect answer")
            playSound("wrong")
        }
        goFurther(thisScore, answer!)
    }
    
    func playSound(_ soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
    func goFurther(_ newScore: Int, _ thisAnswer: String) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nextScreen = storyboard.instantiateViewController(withIdentifier: "Answer1ViewController") as! Answer1ViewController
        nextScreen.score = newScore
        nextScreen.answer = thisAnswer
        self.present(nextScreen, animated: true)
    }

}
