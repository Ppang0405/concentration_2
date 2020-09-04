//
//  ViewController.swift
//  Concentration
//
//  Created by Truong Nguyen on 9/4/20.
//  Copyright © 2020 Truong Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var flipCountLabel: UILabel!

    // all instance properties of class have to init
    var flipCount = 0 { // a property observer ------------------------------- 😦
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)" // every time flipCount change -> should change flipCountLabel
        }
    }

    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        flipCard(withEmoji: "🤢", on: sender)
    }
    @IBAction func touchSecondCard(_ sender: UIButton) {
        flipCount += 1
        flipCard(withEmoji: "🎃", on: sender)
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1) // typing Color, and double click Color Literal
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }

}

