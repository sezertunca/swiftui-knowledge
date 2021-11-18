//
//  ContentView.swift
//  KeyboardInput
//
//  Created by Sezer Tunca on 10/11/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var text: String = ""
    
    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 12) {
                    ForEach(0..<15) { _ in
                        Text("Test cell")
                    }
                }
            }
            
            InputView(text: $text)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
