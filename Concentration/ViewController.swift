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

    // if rename something connect with sb, have to cammand click and select rename
    
    @IBOutlet var cardButtons: [UIButton]!
    
    // emothing index have to put exactly index emoji in UI
    var emojiChoices = ["🎃", "🤢", "🎃", "🤢"]
    
    // all instance properties of class have to init
    var flipCount = 0 { // a property observer ------------------------------- 😦
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)" // every time flipCount change -> should change flipCountLabel
        }
    }

    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        
        guard let cardNumber = cardButtons.firstIndex(of: sender) else {
            print("cardNumber = ??, NOT SET")
            return
        }
        flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        print("cardNumber = \(cardNumber)")
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

