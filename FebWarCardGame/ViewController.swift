//
//  ViewController.swift
//  FebWarCardGame
//
//  Created by Siyu Wang on 2/9/17.
//  Copyright © 2017 Siyu Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // cards
    @IBOutlet weak var rightCard: UIImageView!
    @IBOutlet weak var leftCard: UIImageView!
    // score labels
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!

    @IBAction func dealButton(_ sender: Any) {
        // randomize left number from 2 to 10
        let leftNum = arc4random_uniform(9) + 2
        // randomize right number from 2 to 10
        let rightNum = arc4random_uniform(9) + 2
        
        leftCard.image = UIImage(named: "card\(leftNum)");
        rightCard.image = UIImage(named: "card\(rightNum)");
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

