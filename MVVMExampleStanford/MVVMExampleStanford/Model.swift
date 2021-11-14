//
//  ViewModel.swift
//  MVVMExampleStanford
//
//  Created by Sezer Tunca on 08/11/2021.
//

import Foundation

struct Model<CardContent> {
    
    private(set) var cards: [Card]
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = [Card]()
        // Add numberOfPairsOfCards x 2 cards to cards array
        for pairIndex in 0..<numberOfPairsOfCards {
            let content: CardContent = createCardContent(pairIndex)
            cards.append(Card(id: pairIndex * 2, content: content))
            cards.append(Card(id: pairIndex * 2 + 1, content: content))
        }
    }
    
    mutating func choose (_ card: Card) {
        let chosenIndex = index(of: card)
        cards[chosenIndex].isFaceUp.toggle()
        print("\(cards)")
    }
    
    func index(of card: Card) -> Int {
        
        for index in 0..<cards.count {
            if cards[index].id == card.id {
                return index
            }
        }
        
        return 0 // bogus!
    }
    
    struct Card: Identifiable {
        var id: Int
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
    }
}
