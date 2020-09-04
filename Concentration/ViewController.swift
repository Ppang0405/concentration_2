//
//  ViewController.swift
//  Concentration
//
//  Created by Truong Nguyen on 9/4/20.
//  Copyright © 2020 Truong Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // all instance properties of class have to init
    var flipCount: Int = 0

    @IBAction func touchCard(_ sender: UIButton) {
        flipCard(withEmoji: "🤢", on: sender)
    }
    @IBAction func touchSecondCard(_ sender: UIButton) {
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

