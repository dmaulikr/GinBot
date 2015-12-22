//
//  PlayingCard.swift
//  GinBot
//
//  Created by Joseph Kesting on 12/21/15.
//  Copyright (c) 2015 Joseph Kesting. All rights reserved.
//

import Foundation

struct PlayingCard {
    let suit: PlayingCardSuit
    let rank: Int
    
    var name: NSString {
        switch suit {
        case .Club:
            return "\(rank)_club"
        case .Diamond:
            return "\(rank)_diamond"
        case .Spade:
            return "\(rank)_spade"
        case .Heart:
            return "\(rank)_heart"
        }
    }
    
    // Returns: -1 if otherCard is greater than this in rank
    //          0 if otherCard is equal to this in rank
    //          1 if otherCard is less than this in rank

    func compare (otherCard: PlayingCard) -> Int {
        if rank < otherCard.rank {
            return -1
        } else if rank > otherCard.rank {
            return 1
        }
        return 0
    }
    
    
}