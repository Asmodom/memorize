//
//  MemoryGame.swift
//  Memorize
//
//  Created by Don Nijssen on 12/03/2022.
//

import Foundation


struct MemoryGame<CardContent>{
    private(set) var cards: Array<Card>
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent){
        cards = Array<Card>()
        //TODO: add numberOfPairsOfCards * 2 to card array
        for pairIndex in 0..<numberOfPairsOfCards{
            let content = createCardContent(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
    }
    
    
    func choose(_ card: Card){
        
    }
    
    
    
    
    struct Card{
        var isFacedUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
    }
}
