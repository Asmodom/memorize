//
//  MemoryGame.swift
//  Memorize
//
//  Created by Don Nijssen on 12/03/2022.
//

import Foundation


struct MemoryGame<CardContent> where CardContent: Equatable{
    private(set) var cards: Array<Card>
    private var indexOfFirstCard: Int?
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent){
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards{
            let content = createCardContent(pairIndex)
            cards.append(Card(id: pairIndex*2 ,content: content))
            cards.append(Card(id: pairIndex*2+1,content: content))
        }
    }
    
    mutating func choose(_ card: Card){
        if let chosenIndex = cards.firstIndex(where: { $0.id == card.id})
            , !cards[chosenIndex].isFacedUp
            , !cards[chosenIndex].isMatched{
            if let potentialMatchIndex = indexOfFirstCard{
                if cards[chosenIndex].content == cards[potentialMatchIndex].content{
                    cards[chosenIndex].isMatched = true
                    cards[potentialMatchIndex].isMatched = true
                }
                indexOfFirstCard = nil
            }else{
                for index in cards.indices{
                    cards[index].isFacedUp = false
                }
                indexOfFirstCard = chosenIndex
            }
            
            
            cards[chosenIndex].isFacedUp.toggle()
        }
        print("\(cards)")
    }
    
    struct Card: Identifiable{
        var id: Int
        var isFacedUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
    }
}
