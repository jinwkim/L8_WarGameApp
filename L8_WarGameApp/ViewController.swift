//
//  ViewController.swift
//  L8_WarGameApp
//
//  Created by Jin Kim on 6/11/20.
//  Copyright © 2020 Jin Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var playerScore = 0
    var computerScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    
    
    @IBAction func dealTapped(_ sender: Any) {
        // Randomize numbers
        let leftNumber = Int.random(in: 2...14)
//        print(leftNumber)
        let rightNumber = Int.random(in: 2...14)
//        print(rightNumber)
        
        // Update image views
        leftImageView.image = UIImage(named:"card\(leftNumber)")
        rightImageView.image = UIImage(named:"card\(rightNumber)")
        
        // Compare the player and CPU numbers
        if leftNumber > rightNumber{ // player wins
            playerScore += 1
            leftScoreLabel.text = "\(playerScore)"
        } else if leftNumber == rightNumber { // tie
//            print("There is a draw")
            playerScore += 1
            leftScoreLabel.text = "\(playerScore)"
            computerScore += 1
            rightScoreLabel.text = "\(computerScore)"
        } else { // CPU wins
            computerScore += 1
            rightScoreLabel.text = "\(computerScore)"
        }
    }
    
}

