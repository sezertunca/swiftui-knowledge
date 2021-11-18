//
//  ContentView.swift
//  Submenu
//
//  Created by Sezer Tunca on 14/11/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedOption  = MenuOptions.third

    var body: some View {
        SubmenuView(selectedOption: $selectedOption)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(selectedOption: .first)
    }
}
