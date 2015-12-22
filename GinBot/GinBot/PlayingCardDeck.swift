//
//  PlayingCardDeck.swift
//  GinBot
//
//  Created by Joseph Kesting on 12/21/15.
//  Copyright (c) 2015 Joseph Kesting. All rights reserved.
//

import Foundation
import Darwin

class PlayingCardDeck {
    
    var cards: [PlayingCard]
    
    init() {
        cards = [PlayingCard]()
        var i = 0
        while let suit = PlayingCardSuit(rawValue: i) {
            for j in 0...12 {
                cards.append(PlayingCard(suit: suit, rank: j))
            }
            i++
        }
    }
    
    func draw () -> PlayingCard {
        var index = Int(arc4random_uniform(UInt32(cards.count)))
        let card = cards.removeAtIndex(index)
        return card
    }
    
    
}