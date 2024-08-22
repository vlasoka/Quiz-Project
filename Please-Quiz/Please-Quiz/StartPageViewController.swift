//
//  StartPageViewController.swift
//  Please-Quiz
//
//  Created by София Кармаева on 8/5/2024.
//

import UIKit

class StartPageViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func startQuiz(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nextScreen = storyboard.instantiateViewController(withIdentifier: "InfoListViewController") as! InfoListViewController
        self.present(nextScreen, animated: true)
    }
    
    @IBAction func exitApp(_ sender: UIButton) {
        UIControl().sendAction(#selector(URLSessionTask.suspend), to: UIApplication.shared, for: nil)
    }

}
