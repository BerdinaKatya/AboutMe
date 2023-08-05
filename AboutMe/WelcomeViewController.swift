//
//  WellcomeViewController.swift
//  AboutMe
//
//  Created by Екатерина Кузнецова on 05.08.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var emojiLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome, \(userName ?? "")!"
        welcomeLabel.textColor = .white
        emojiLabel.text = "🫰"
        
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [
            UIColor.cyan.cgColor,
            UIColor.orange.cgColor,
        ]
        view.layer.insertSublayer(gradient, at: 0)
    }

    @IBAction func logOutTapped() {
    }
}
