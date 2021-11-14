//
//  Model.swift
//  MVVMExampleStanford
//
//  Created by Sezer Tunca on 08/11/2021.
//

import SwiftUI

class ViewModel: ObservableObject {
    
    static let emojis = ["✈️", "🚒", "🚆",  "🛺", "🛻", "🚑", "🛵", "🚖", "🚘", "🚀", "🚁", "🛸", "🛶", "⛵️",  "🛥", "🛳"]
    
    @Published private var model: Model<String> = createMemoryGame()
    
    static func createMemoryGame() -> Model<String> {
        Model<String>(numberOfPairsOfCards: 4) { pairIndex in
            ViewModel.emojis[pairIndex]
        }
    }
        
    var cards: [Model<String>.Card] {
        model.cards
    }
    
    // MARK: Intent (s)
    
    func choose(_ card: Model<String>.Card) {
        model.choose(card)
    }
}
