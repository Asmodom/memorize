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
            cards.append(Card(id: pairIndex*2 ,content: content))
            cards.append(Card(id: pairIndex*2+1,content: content))
        }
    }
    
    func index(of card: Card) -> Int{
        for index in 0..<cards.count{
            if cards[index].id == card.id
            {
                return index
            }
        }
        return -1 // TODO: fix this make it nice
    }
    
    mutating func choose(_ card: Card){
        let chosenIndex = index(of: card)
        cards[chosenIndex].isFacedUp.toggle()

        print("\(cards)")
    }
    
    struct Card: Identifiable{
        var id: Int
        var isFacedUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
    }
}
