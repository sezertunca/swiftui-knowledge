//
//  Model.swift
//  MVVMExampleStanford
//
//  Created by Sezer Tunca on 08/11/2021.
//

import SwiftUI

class Model: ObservableObject {
    
    static let emojis = ["✈️", "🚒", "🚆",  "🛺", "🛻", "🚑", "🛵", "🚖", "🚘", "🚀", "🚁", "🛸", "🛶", "⛵️",  "🛥", "🛳"]
    
    static func createMemoryGame() -> ViewModel<String> {
        ViewModel<String>(numberOfPairsOfCards: 4) { pairIndex in
            Model.emojis[pairIndex]
        }
    }
    
    @Published private var model: ViewModel<String> = createMemoryGame()
    
    var cards: [ViewModel<String>.Card] {
        model.cards
    }
    
    // MARK: Intent (s)
    
    func choose(_ card: ViewModel<String>.Card) {
        model.choose(card)
    }
}
