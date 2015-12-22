//
//  ViewController.swift
//  GinBot
//
//  Created by Joseph Kesting on 12/17/15.
//  Copyright (c) 2015 Joseph Kesting. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 1
    var deck = PlayingCardDeck()
    
    @IBAction func flipCard(sender: UIButton) {
        var flipped = sender.tag
        print(flipped)
        if flipped == 0 {
            let card = deck.draw()
            print(card.name)
            sender.setImage(UIImage(named: "queen_of_clubs"), forState: .Normal)
            sender.tag = 1
        } else {
            sender.setImage(UIImage(named: "playing_card_back"), forState: .Normal)
            sender.tag = 0
        }
        counter++
        print(counter)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

