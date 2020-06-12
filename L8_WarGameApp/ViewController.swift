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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    
    
    @IBAction func dealTapped(_ sender: Any) {
        let leftNumber = Int.random(in: 2...14)
//        print(leftNumber)
        let rightNumber = Int.random(in: 2...14)
//        print(rightNumber)
        
        leftImageView.image = UIImage(named:"card\(leftNumber)")
        rightImageView.image = UIImage(named:"card\(rightNumber)")
    }
    
}

