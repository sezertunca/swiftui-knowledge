//
//  ContentView.swift
//  StickyHeader
//
//  Created by Sezer Tunca on 08/11/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            StickyHeader {
                StickyHeader {
                    Image("cover")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                }
            }
            
            // Scroll View Content Here
            // ...
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


