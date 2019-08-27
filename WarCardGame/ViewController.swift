//
//  ViewController.swift
//  WarCardGame
//
//  Created by Çağatay Balıkçı on 7.07.2019.
//  Copyright © 2019 Çağatay Balıkçı. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    
    
    @IBOutlet weak var playerScoreLabel: UILabel!
    @IBOutlet weak var cpuScoreLabel: UILabel!
    
    var playerScore = 0
    var cpuScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }


    @IBAction func dealbutton(_ sender: Any) {
        
        let randomNumberOne = Int.random(in: 2 ... 14)
        let randomNumberTwo = Int.random(in: 2 ... 14)
        
        leftImageView.image = UIImage(named: "card\(randomNumberOne)")
        rightImageView.image = UIImage(named: "card\(randomNumberTwo)")
        
        if randomNumberOne > randomNumberTwo {
            playerScore += 1
            playerScoreLabel.text = String(playerScore)
        }else if randomNumberOne < randomNumberTwo {
            cpuScore += 1
            cpuScoreLabel.text = String(cpuScore)
        }
        else {
            cpuScore += 1
            cpuScoreLabel.text = String(cpuScore)
            playerScore += 1
            playerScoreLabel.text = String(playerScore)
            
        }
        
    }
}

