//
//  ContentView.swift
//  MVVMExampleStanford
//
//  Created by Sezer Tunca on 08/11/2021.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel: Model
    
    var body: some View {
        
        
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                ForEach(viewModel.cards) { card in
                    CardView(card: card).aspectRatio(2/3, contentMode: .fit)
                        .onTapGesture {
                            viewModel.choose(card)
                        }
                }
            }
        }
        .foregroundColor(.red)
        .padding(.horizontal)
    }

}

struct CardView: View {
    
    let card: ViewModel<String>.Card
        
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if card.isFaceUp {
                    shape
                    .fill(.white)
                shape
                    .strokeBorder(lineWidth: 3)
                Text(card.content)
                    .font(.largeTitle)
            }
            else {
                shape
                .fill(.red)
            }
        }
    }
}










struct ContentView_Previews: PreviewProvider {

    static var previews: some View {
        
        let game = Model()
        ContentView(viewModel: game)
.previewInterfaceOrientation(.portrait)
        ContentView(viewModel: game).preferredColorScheme(.dark)
    }
}

