//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Don Nijssen on 12/03/2022.
//

import SwiftUI


class EmojiMemoryGame {
   /* private(set) var model: MemoryGame<String> = MemoryGame<String>(numberOfPairsOfCards: 4, createCardContent: { pairIndex in
        return emojis[pairIndex]
    })*/
    
    private var model: MemoryGame<String> = createMemoryGame()
    
    
    static let emojis = ["✈️", "🚝", "🚌", "🚲", "🚘", "🚁", "🛵", "🏎", "🚃", "🛺", "⛵️", "🚤", "🚕", "🚚", "🛸", "🛶", "🚢", "🚡", "🛰", "🛻", "🚜", "🏍", "🚔", "🛴"]

    
    static func createMemoryGame() -> MemoryGame<String>{
        return MemoryGame<String>(numberOfPairsOfCards: 4, createCardContent: { pairIndex in
             emojis[pairIndex]
        });
    }
    

    
    var cards: Array<MemoryGame<String>.Card>{
        return model.cards
    }
    
}


