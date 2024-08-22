//
//  ViewController.swift
//  Please, Quiz!
//
//  Created by София Кармаева on 16/8/2024.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet weak var infoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoLabel.text = info
    }
    
}

