//
//  ViewController.swift
//  FebWarCardGame
//
//  Created by Siyu Wang on 2/9/17.
//  Copyright © 2017 Siyu Wang. All rights reserved.
// test github

import UIKit

class ViewController: UIViewController {
    // cards
    @IBOutlet weak var rightCard: UIImageView!
    @IBOutlet weak var leftCard: UIImageView!
    // score labels
    @IBOutlet weak var leftScoreLabel: UILabel!
    var leftScore = 0;
    @IBOutlet weak var rightScoreLabel: UILabel!
    var rightScore = 0;

    @IBAction func dealButton(_ sender: Any) {
        // randomize left number from 2 to 14
        let leftNum = arc4random_uniform(13) + 2
        // randomize right number from 2 to 14
        let rightNum = arc4random_uniform(13) + 2
        
        leftCard.image = UIImage(named: "card\(leftNum)");
        rightCard.image = UIImage(named: "card\(rightNum)");
        
        if leftNum > rightNum {
            // left card wins
            leftScore += 1;
            leftScoreLabel.text = String(leftScore)
        } else if leftNum == rightNum {
            
        } else {
            // right card wins
            rightScore += 1;
            rightScoreLabel.text = String(rightScore)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

