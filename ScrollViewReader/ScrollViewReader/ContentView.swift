//
//  ContentView.swift
//  ScrollViewReader
//
//  Created by Sezer Tunca on 08/11/2021.
//

import SwiftUI

struct ContentView: View {
    
    let colors = [Color.red, .green, .blue]
    var body: some View {
        ScrollView {
            ScrollViewReader { value in
                Button("Jump to 8") {
                    value.scrollTo(8, anchor: .center)
                }
                ForEach(0..<10) { i in
                    Text("Example \(i)")
                        .frame(width: 300, height: 300)
                        .background(colors[i % colors.count])
                        .id(i)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
